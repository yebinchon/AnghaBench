
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {size_t offset; } ;
struct cw1200_txinfo {size_t hdrlen; TYPE_2__ txpriv; TYPE_3__* skb; } ;
struct cw1200_common {TYPE_1__* hw; } ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_5__ {int wiphy; } ;


 int EINVAL ;
 int ENOMEM ;
 int WSM_TX_2BYTES_SHIFT ;
 int cw1200_debug_tx_align (struct cw1200_common*) ;
 size_t skb_headroom (TYPE_3__*) ;
 int skb_push (TYPE_3__*,size_t) ;
 int wiphy_err (int ,char*,size_t) ;

__attribute__((used)) static int
cw1200_tx_h_align(struct cw1200_common *priv,
    struct cw1200_txinfo *t,
    u8 *flags)
{
 size_t offset = (size_t)t->skb->data & 3;

 if (!offset)
  return 0;

 if (offset & 1) {
  wiphy_err(priv->hw->wiphy,
     "Bug: attempt to transmit a frame with wrong alignment: %zu\n",
     offset);
  return -EINVAL;
 }

 if (skb_headroom(t->skb) < offset) {
  wiphy_err(priv->hw->wiphy,
     "Bug: no space allocated for DMA alignment. headroom: %d\n",
     skb_headroom(t->skb));
  return -ENOMEM;
 }
 skb_push(t->skb, offset);
 t->hdrlen += offset;
 t->txpriv.offset += offset;
 *flags |= WSM_TX_2BYTES_SHIFT;
 cw1200_debug_tx_align(priv);
 return 0;
}
