
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct olpc_xo175_ec* context; int complete; } ;
struct TYPE_6__ {size_t len; } ;
struct olpc_xo175_ec {TYPE_3__* spi; TYPE_1__ msg; TYPE_2__ xfer; int tx_buf; } ;
struct TYPE_7__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int memcpy (int *,void*,size_t) ;
 int olpc_xo175_ec_complete ;
 int spi_async (TYPE_3__*,TYPE_1__*) ;
 int spi_message_init_with_transfers (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static void olpc_xo175_ec_send_command(struct olpc_xo175_ec *priv, void *cmd,
        size_t cmdlen)
{
 int ret;

 memcpy(&priv->tx_buf, cmd, cmdlen);
 priv->xfer.len = cmdlen;

 spi_message_init_with_transfers(&priv->msg, &priv->xfer, 1);

 priv->msg.complete = olpc_xo175_ec_complete;
 priv->msg.context = priv;

 ret = spi_async(priv->spi, &priv->msg);
 if (ret)
  dev_err(&priv->spi->dev, "spi_async() failed %d\n", ret);
}
