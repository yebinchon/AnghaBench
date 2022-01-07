
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* bas; } ;
struct bc_state {scalar_t__ rx_bufsize; TYPE_4__* rx_skb; TYPE_3__ hw; TYPE_1__* cs; int rx_fcs; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_7__ {int giants; } ;
struct TYPE_6__ {int dev; } ;


 int __skb_put_u8 (TYPE_4__*,unsigned char) ;
 int crc_ccitt_byte (int ,unsigned char) ;
 int dev_kfree_skb_any (TYPE_4__*) ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static inline void hdlc_putbyte(unsigned char c, struct bc_state *bcs)
{
 bcs->rx_fcs = crc_ccitt_byte(bcs->rx_fcs, c);
 if (bcs->rx_skb == ((void*)0))

  return;
 if (bcs->rx_skb->len >= bcs->rx_bufsize) {
  dev_warn(bcs->cs->dev, "received oversized packet discarded\n");
  bcs->hw.bas->giants++;
  dev_kfree_skb_any(bcs->rx_skb);
  bcs->rx_skb = ((void*)0);
  return;
 }
 __skb_put_u8(bcs->rx_skb, c);
}
