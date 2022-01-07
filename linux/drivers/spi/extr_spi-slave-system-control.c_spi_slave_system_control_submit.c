
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct spi_slave_system_control_priv* context; int complete; } ;
struct spi_slave_system_control_priv {TYPE_2__* spi; TYPE_1__ msg; int xfer; } ;
struct TYPE_5__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int spi_async (TYPE_2__*,TYPE_1__*) ;
 int spi_message_init_with_transfers (TYPE_1__*,int *,int) ;
 int spi_slave_system_control_complete ;

__attribute__((used)) static
int spi_slave_system_control_submit(struct spi_slave_system_control_priv *priv)
{
 int ret;

 spi_message_init_with_transfers(&priv->msg, &priv->xfer, 1);

 priv->msg.complete = spi_slave_system_control_complete;
 priv->msg.context = priv;

 ret = spi_async(priv->spi, &priv->msg);
 if (ret)
  dev_err(&priv->spi->dev, "spi_async() failed %d\n", ret);

 return ret;
}
