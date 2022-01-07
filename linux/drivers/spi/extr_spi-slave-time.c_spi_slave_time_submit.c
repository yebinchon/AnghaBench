
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {struct spi_slave_time_priv* context; int complete; } ;
struct spi_slave_time_priv {TYPE_2__* spi; TYPE_1__ msg; int xfer; void** buf; } ;
struct TYPE_5__ {int dev; } ;


 void* cpu_to_be32 (int) ;
 int dev_err (int *,char*,int) ;
 int do_div (int,int) ;
 int local_clock () ;
 int spi_async (TYPE_2__*,TYPE_1__*) ;
 int spi_message_init_with_transfers (TYPE_1__*,int *,int) ;
 int spi_slave_time_complete ;

__attribute__((used)) static int spi_slave_time_submit(struct spi_slave_time_priv *priv)
{
 u32 rem_us;
 int ret;
 u64 ts;

 ts = local_clock();
 rem_us = do_div(ts, 1000000000) / 1000;

 priv->buf[0] = cpu_to_be32(ts);
 priv->buf[1] = cpu_to_be32(rem_us);

 spi_message_init_with_transfers(&priv->msg, &priv->xfer, 1);

 priv->msg.complete = spi_slave_time_complete;
 priv->msg.context = priv;

 ret = spi_async(priv->spi, &priv->msg);
 if (ret)
  dev_err(&priv->spi->dev, "spi_async() failed %d\n", ret);

 return ret;
}
