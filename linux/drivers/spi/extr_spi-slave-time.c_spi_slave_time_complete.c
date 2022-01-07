
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
struct spi_slave_time_priv {int finished; TYPE_2__* spi; TYPE_1__ msg; } ;
struct TYPE_4__ {int dev; } ;


 int complete (int *) ;
 int dev_info (int *,char*) ;
 int spi_slave_time_submit (struct spi_slave_time_priv*) ;

__attribute__((used)) static void spi_slave_time_complete(void *arg)
{
 struct spi_slave_time_priv *priv = arg;
 int ret;

 ret = priv->msg.status;
 if (ret)
  goto terminate;

 ret = spi_slave_time_submit(priv);
 if (ret)
  goto terminate;

 return;

terminate:
 dev_info(&priv->spi->dev, "Terminating\n");
 complete(&priv->finished);
}
