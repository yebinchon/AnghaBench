
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* bas; } ;
struct bc_state {int rx_fcs; int rx_skb; TYPE_3__ hw; TYPE_1__* cs; int ignore; } ;
struct TYPE_5__ {int alignerrs; } ;
struct TYPE_4__ {int dev; } ;


 int PPP_INITFCS ;
 int __skb_trim (int ,int ) ;
 int dev_notice (int ,char*,unsigned int) ;
 int gigaset_isdn_rcv_err (struct bc_state*) ;
 int hdlc_flush (struct bc_state*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void hdlc_frag(struct bc_state *bcs, unsigned inbits)
{
 if (unlikely(bcs->ignore)) {
  bcs->ignore--;
  hdlc_flush(bcs);
  return;
 }

 dev_notice(bcs->cs->dev, "received partial byte (%d bits)\n", inbits);
 bcs->hw.bas->alignerrs++;
 gigaset_isdn_rcv_err(bcs);
 __skb_trim(bcs->rx_skb, 0);
 bcs->rx_fcs = PPP_INITFCS;
}
