
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct trf7970a {int aborting; TYPE_1__* rx_skb; int cb_arg; int ddev; int (* cb ) (int ,int ,TYPE_1__*) ;int dev; int state; int * tx_skb; } ;
struct TYPE_5__ {int len; int data; } ;


 int DUMP_PREFIX_NONE ;
 int ECANCELED ;
 TYPE_1__* ERR_PTR (int ) ;
 int IS_ERR (TYPE_1__*) ;
 int TRF7970A_ST_IDLE ;
 int dev_dbg (int ,char*) ;
 int dev_kfree_skb_any (int *) ;
 int kfree_skb (TYPE_1__*) ;
 int print_hex_dump_debug (char*,int ,int,int,int ,int ,int) ;
 int stub1 (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void trf7970a_send_upstream(struct trf7970a *trf)
{
 dev_kfree_skb_any(trf->tx_skb);
 trf->tx_skb = ((void*)0);

 if (trf->rx_skb && !IS_ERR(trf->rx_skb) && !trf->aborting)
  print_hex_dump_debug("trf7970a rx data: ", DUMP_PREFIX_NONE,
         16, 1, trf->rx_skb->data, trf->rx_skb->len,
         0);

 trf->state = TRF7970A_ST_IDLE;

 if (trf->aborting) {
  dev_dbg(trf->dev, "Abort process complete\n");

  if (!IS_ERR(trf->rx_skb)) {
   kfree_skb(trf->rx_skb);
   trf->rx_skb = ERR_PTR(-ECANCELED);
  }

  trf->aborting = 0;
 }

 trf->cb(trf->ddev, trf->cb_arg, trf->rx_skb);

 trf->rx_skb = ((void*)0);
}
