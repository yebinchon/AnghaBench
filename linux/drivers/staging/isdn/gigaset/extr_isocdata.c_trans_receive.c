
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_4__ {TYPE_1__* bas; } ;
struct bc_state {int rx_bufsize; TYPE_2__ hw; struct sk_buff* rx_skb; int ignore; } ;
struct TYPE_3__ {int goodbytes; } ;


 int DEBUG_STREAM_DUMP ;
 int bitrev8 (int ) ;
 int dump_bytes (int ,char*,int ,int) ;
 struct sk_buff* gigaset_new_rx_skb (struct bc_state*) ;
 int gigaset_skb_rcvd (struct bc_state*,struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void trans_receive(unsigned char *src, unsigned count,
     struct bc_state *bcs)
{
 struct sk_buff *skb;
 int dobytes;
 unsigned char *dst;

 if (unlikely(bcs->ignore)) {
  bcs->ignore--;
  return;
 }
 skb = bcs->rx_skb;
 if (skb == ((void*)0)) {
  skb = gigaset_new_rx_skb(bcs);
  if (skb == ((void*)0))
   return;
 }
 dobytes = bcs->rx_bufsize - skb->len;
 while (count > 0) {
  dst = skb_put(skb, count < dobytes ? count : dobytes);
  while (count > 0 && dobytes > 0) {
   *dst++ = bitrev8(*src++);
   count--;
   dobytes--;
  }
  if (dobytes == 0) {
   dump_bytes(DEBUG_STREAM_DUMP,
       "rcv data", skb->data, skb->len);
   bcs->hw.bas->goodbytes += skb->len;
   gigaset_skb_rcvd(bcs, skb);
   skb = gigaset_new_rx_skb(bcs);
   if (skb == ((void*)0))
    return;
   dobytes = bcs->rx_bufsize;
  }
 }
}
