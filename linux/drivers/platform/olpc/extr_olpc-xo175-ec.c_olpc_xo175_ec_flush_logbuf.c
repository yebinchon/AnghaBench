
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct olpc_xo175_ec {scalar_t__ logbuf_len; int logbuf; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,scalar_t__,int ) ;

__attribute__((used)) static void olpc_xo175_ec_flush_logbuf(struct olpc_xo175_ec *priv)
{
 dev_dbg(&priv->spi->dev, "got debug string [%*pE]\n",
    priv->logbuf_len, priv->logbuf);
 priv->logbuf_len = 0;
}
