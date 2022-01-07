
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bas_bc_state* bas; } ;
struct bc_state {int inputstate; TYPE_1__ hw; } ;
struct bas_bc_state {unsigned int seqlen; unsigned int inbyte; unsigned int inbits; int aborts; int stolen0s; int shared0s; } ;


 int INS_flag_hunt ;
 int INS_have_data ;
 unsigned char PPP_FLAG ;
 unsigned char* bitcounts ;
 int hdlc_done (struct bc_state*) ;
 int hdlc_flush (struct bc_state*) ;
 int hdlc_frag (struct bc_state*,unsigned int) ;
 int hdlc_putbyte (unsigned int,struct bc_state*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void hdlc_unpack(unsigned char *src, unsigned count,
          struct bc_state *bcs)
{
 struct bas_bc_state *ubc = bcs->hw.bas;
 int inputstate;
 unsigned seqlen, inbyte, inbits;
 inputstate = bcs->inputstate;
 seqlen = ubc->seqlen;
 inbyte = ubc->inbyte;
 inbits = ubc->inbits;






 while (count--) {
  unsigned char c = *src++;
  unsigned char tabentry = bitcounts[c];
  unsigned lead1 = tabentry & 0x0f;
  unsigned trail1 = (tabentry >> 4) & 0x0f;

  seqlen += lead1;

  if (unlikely(inputstate & INS_flag_hunt)) {
   if (c == PPP_FLAG) {

    inputstate &= ~(INS_flag_hunt | INS_have_data);
    inbyte = 0;
    inbits = 0;
   } else if (seqlen == 6 && trail1 != 7) {

    inputstate &= ~(INS_flag_hunt | INS_have_data);
    inbyte = c >> (lead1 + 1);
    inbits = 7 - lead1;
    if (trail1 >= 8) {




     inbits--;
     switch (c) {
     case 0xbe:
      inbyte = 0x3f;
      break;
     }
    }
   }

  } else if (likely(seqlen < 5 && trail1 < 7)) {

   inbyte |= c << inbits;
   hdlc_putbyte(inbyte & 0xff, bcs);
   inputstate |= INS_have_data;
   inbyte >>= 8;

  } else if (likely(seqlen == 6 && inbits == 7 - lead1 &&
      trail1 + 1 == inbits &&
      !(inputstate & INS_have_data))) {

  } else if (unlikely(seqlen > 6)) {

   ubc->aborts++;
   hdlc_flush(bcs);
   inputstate |= INS_flag_hunt;
  } else if (seqlen == 6) {


   if (inbits > 7 - lead1) {
    hdlc_frag(bcs, inbits + lead1 - 7);
    inputstate &= ~INS_have_data;
   } else {
    if (inbits < 7 - lead1)
     ubc->stolen0s++;
    if (inputstate & INS_have_data) {
     hdlc_done(bcs);
     inputstate &= ~INS_have_data;
    }
   }

   if (c == PPP_FLAG) {

    ubc->shared0s++;
    inbits = 0;
    inbyte = 0;
   } else if (trail1 != 7) {

    inbyte = c >> (lead1 + 1);
    inbits = 7 - lead1;
    if (trail1 >= 8) {




     inbits--;
     switch (c) {
     case 0xbe:
      inbyte = 0x3f;
      break;
     }
    }
   } else {


    ubc->aborts++;
    inputstate |= INS_flag_hunt;
   }
  } else {

   if (c == PPP_FLAG) {

    if (seqlen == 5)
     ubc->stolen0s++;
    if (inbits) {
     hdlc_frag(bcs, inbits);
     inbits = 0;
     inbyte = 0;
    } else if (inputstate & INS_have_data)
     hdlc_done(bcs);
    inputstate &= ~INS_have_data;
   } else if (trail1 == 7) {

    ubc->aborts++;
    hdlc_flush(bcs);
    inputstate |= INS_flag_hunt;
   } else {

    if (trail1 < 7) {


     unsigned char mask = (1 << lead1) - 1;
     c = (c & mask) | ((c & ~mask) >> 1);
     inbyte |= c << inbits;
     inbits += 7;
    } else if (seqlen < 5) {




     switch (c) {
     case 0xbe:
      c = 0x7e;
      break;
     }
     inbyte |= c << inbits;
     inbits += 7;
    } else {



     switch (c) {
     case 0x7d:
      c = 0x3f;
      break;
     case 0xbe:
      c = 0x3f;
      break;
     case 0x3e:
      c = 0x1f;
      break;
     case 0x7c:
      c = 0x3e;
      break;
     }
     inbyte |= c << inbits;
     inbits += 6;
    }
    if (inbits >= 8) {
     inbits -= 8;
     hdlc_putbyte(inbyte & 0xff, bcs);
     inputstate |= INS_have_data;
     inbyte >>= 8;
    }
   }
  }
  seqlen = trail1 & 7;
 }


 bcs->inputstate = inputstate;
 ubc->seqlen = seqlen;
 ubc->inbyte = inbyte;
 ubc->inbits = inbits;
}
