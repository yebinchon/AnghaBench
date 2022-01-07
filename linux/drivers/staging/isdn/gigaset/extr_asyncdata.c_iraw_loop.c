
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct inbuf_t {unsigned char* data; int head; struct cardstate* cs; } ;
struct cardstate {scalar_t__ dle; struct bc_state* bcs; } ;
struct bc_state {int inputstate; scalar_t__ rx_bufsize; struct sk_buff* rx_skb; } ;


 unsigned char DLE_FLAG ;
 int INS_DLE_char ;
 int INS_DLE_command ;
 int INS_have_data ;
 int __skb_put_u8 (struct sk_buff*,int ) ;
 int bitrev8 (unsigned char) ;
 int gigaset_new_rx_skb (struct bc_state*) ;
 int gigaset_skb_rcvd (struct bc_state*,struct sk_buff*) ;

__attribute__((used)) static unsigned iraw_loop(unsigned numbytes, struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;
 struct bc_state *bcs = cs->bcs;
 int inputstate = bcs->inputstate;
 struct sk_buff *skb = bcs->rx_skb;
 unsigned char *src = inbuf->data + inbuf->head;
 unsigned procbytes = 0;
 unsigned char c;

 if (!skb) {

  gigaset_new_rx_skb(bcs);
  return numbytes;
 }

 while (procbytes < numbytes && skb->len < bcs->rx_bufsize) {
  c = *src++;
  procbytes++;

  if (c == DLE_FLAG) {
   if (inputstate & INS_DLE_char) {

    inputstate &= ~INS_DLE_char;
   } else if (cs->dle || (inputstate & INS_DLE_command)) {

    inputstate |= INS_DLE_char;
    break;
   }
  }


  inputstate |= INS_have_data;
  __skb_put_u8(skb, bitrev8(c));
 }


 if (inputstate & INS_have_data) {
  gigaset_skb_rcvd(bcs, skb);
  inputstate &= ~INS_have_data;
  gigaset_new_rx_skb(bcs);
 }

 bcs->inputstate = inputstate;
 return procbytes;
}
