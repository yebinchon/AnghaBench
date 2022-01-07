
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int rx_fcs; int * rx_skb; } ;


 int PPP_INITFCS ;
 int gigaset_new_rx_skb (struct bc_state*) ;
 int skb_trim (int *,int ) ;

__attribute__((used)) static inline void hdlc_flush(struct bc_state *bcs)
{

 if (bcs->rx_skb != ((void*)0))
  skb_trim(bcs->rx_skb, 0);
 else
  gigaset_new_rx_skb(bcs);


 bcs->rx_fcs = PPP_INITFCS;
}
