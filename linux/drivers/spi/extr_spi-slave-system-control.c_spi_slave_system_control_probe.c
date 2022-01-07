
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int * rx_buf; } ;
struct spi_slave_system_control_priv {TYPE_1__ xfer; int cmd; int finished; struct spi_device* spi; } ;
struct spi_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct spi_slave_system_control_priv* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;
 int spi_set_drvdata (struct spi_device*,struct spi_slave_system_control_priv*) ;
 int spi_slave_system_control_submit (struct spi_slave_system_control_priv*) ;

__attribute__((used)) static int spi_slave_system_control_probe(struct spi_device *spi)
{
 struct spi_slave_system_control_priv *priv;
 int ret;

 priv = devm_kzalloc(&spi->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->spi = spi;
 init_completion(&priv->finished);
 priv->xfer.rx_buf = &priv->cmd;
 priv->xfer.len = sizeof(priv->cmd);

 ret = spi_slave_system_control_submit(priv);
 if (ret)
  return ret;

 spi_set_drvdata(spi, priv);
 return 0;
}
