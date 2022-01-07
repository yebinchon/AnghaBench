
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int tx_buf; } ;
struct spi_slave_time_priv {TYPE_1__ xfer; int buf; int finished; struct spi_device* spi; } ;
struct spi_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct spi_slave_time_priv* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;
 int spi_set_drvdata (struct spi_device*,struct spi_slave_time_priv*) ;
 int spi_slave_time_submit (struct spi_slave_time_priv*) ;

__attribute__((used)) static int spi_slave_time_probe(struct spi_device *spi)
{
 struct spi_slave_time_priv *priv;
 int ret;

 priv = devm_kzalloc(&spi->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->spi = spi;
 init_completion(&priv->finished);
 priv->xfer.tx_buf = priv->buf;
 priv->xfer.len = sizeof(priv->buf);

 ret = spi_slave_time_submit(priv);
 if (ret)
  return ret;

 spi_set_drvdata(spi, priv);
 return 0;
}
