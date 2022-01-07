
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct inbuf_t {unsigned char* data; int head; struct cardstate* cs; } ;
struct cardstate {int dev; scalar_t__ dle; struct bc_state* bcs; } ;
struct bc_state {int inputstate; scalar_t__ rx_fcs; unsigned char emptycount; int rx_bufsize; struct sk_buff* rx_skb; } ;
typedef scalar_t__ __u16 ;


 int DEBUG_HDLC ;
 unsigned char DLE_FLAG ;
 int INS_DLE_char ;
 int INS_DLE_command ;
 int INS_byte_stuff ;
 int INS_have_data ;
 unsigned char PPP_ESCAPE ;
 unsigned char PPP_FLAG ;
 scalar_t__ PPP_GOODFCS ;
 scalar_t__ PPP_INITFCS ;
 unsigned char PPP_TRANS ;
 int __skb_put_u8 (struct sk_buff*,unsigned char) ;
 int __skb_trim (struct sk_buff*,int) ;
 scalar_t__ crc_ccitt_byte (scalar_t__,unsigned char) ;
 int dev_err (int ,char*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_warn (int ,char*,...) ;
 int gig_dbg (int ,char*,...) ;
 int gigaset_isdn_rcv_err (struct bc_state*) ;
 struct sk_buff* gigaset_new_rx_skb (struct bc_state*) ;
 int gigaset_skb_rcvd (struct bc_state*,struct sk_buff*) ;
 scalar_t__ muststuff (unsigned char) ;

__attribute__((used)) static unsigned hdlc_loop(unsigned numbytes, struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;
 struct bc_state *bcs = cs->bcs;
 int inputstate = bcs->inputstate;
 __u16 fcs = bcs->rx_fcs;
 struct sk_buff *skb = bcs->rx_skb;
 unsigned char *src = inbuf->data + inbuf->head;
 unsigned procbytes = 0;
 unsigned char c;

 if (inputstate & INS_byte_stuff) {
  if (!numbytes)
   return 0;
  inputstate &= ~INS_byte_stuff;
  goto byte_stuff;
 }

 while (procbytes < numbytes) {
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

  if (c == PPP_ESCAPE) {

   if (procbytes >= numbytes) {

    inputstate |= INS_byte_stuff;
    break;
   }
byte_stuff:
   c = *src++;
   procbytes++;
   if (c == DLE_FLAG) {
    if (inputstate & INS_DLE_char) {

     inputstate &= ~INS_DLE_char;
    } else if (cs->dle ||
        (inputstate & INS_DLE_command)) {

     inputstate |=
      INS_DLE_char | INS_byte_stuff;
     break;
    }
   }
   c ^= PPP_TRANS;




  } else if (c == PPP_FLAG) {

   if (inputstate & INS_have_data) {
    gig_dbg(DEBUG_HDLC,
     "7e----------------------------");


    if (!skb) {

     gigaset_isdn_rcv_err(bcs);
    } else if (skb->len < 2) {

     dev_warn(cs->dev,
       "short frame (%d)\n",
       skb->len);
     gigaset_isdn_rcv_err(bcs);
     dev_kfree_skb_any(skb);
    } else if (fcs != PPP_GOODFCS) {

     dev_err(cs->dev,
      "Checksum failed, %u bytes corrupted!\n",
      skb->len);
     gigaset_isdn_rcv_err(bcs);
     dev_kfree_skb_any(skb);
    } else {

     __skb_trim(skb, skb->len - 2);
     gigaset_skb_rcvd(bcs, skb);
    }


    inputstate &= ~INS_have_data;
    skb = gigaset_new_rx_skb(bcs);
   } else {




    if (!skb) {

     gigaset_isdn_rcv_err(bcs);
     skb = gigaset_new_rx_skb(bcs);
    }
   }

   fcs = PPP_INITFCS;
   continue;





  }
  inputstate |= INS_have_data;
  if (skb) {
   if (skb->len >= bcs->rx_bufsize) {
    dev_warn(cs->dev, "received packet too long\n");
    dev_kfree_skb_any(skb);

    bcs->rx_skb = skb = ((void*)0);
   } else {
    __skb_put_u8(skb, c);
    fcs = crc_ccitt_byte(fcs, c);
   }
  }
 }

 bcs->inputstate = inputstate;
 bcs->rx_fcs = fcs;
 return procbytes;
}
