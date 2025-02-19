
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM3_REF_CLOCK ;

__attribute__((used)) static void pm3fb_calculate_clock(unsigned long reqclock,
    unsigned char *prescale,
    unsigned char *feedback,
    unsigned char *postscale)
{
 int f, pre, post;
 unsigned long freq;
 long freqerr = 1000;
 long currerr;

 for (f = 1; f < 256; f++) {
  for (pre = 1; pre < 256; pre++) {
   for (post = 0; post < 5; post++) {
    freq = ((2*PM3_REF_CLOCK * f) >> post) / pre;
    currerr = (reqclock > freq)
     ? reqclock - freq
     : freq - reqclock;
    if (currerr < freqerr) {
     freqerr = currerr;
     *feedback = f;
     *prescale = pre;
     *postscale = post;
    }
   }
  }
 }
}
