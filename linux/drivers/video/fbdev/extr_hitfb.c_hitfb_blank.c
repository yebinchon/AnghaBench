
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int HD64461_LCDCCR ;
 unsigned short HD64461_LCDCCR_MOFF ;
 unsigned short HD64461_LCDCCR_STBACK ;
 unsigned short HD64461_LCDCCR_STREQ ;
 int HD64461_LDR1 ;
 unsigned short HD64461_LDR1_DON ;
 int HD64461_STBCR ;
 unsigned short HD64461_STBCR_SLCDST ;
 unsigned short fb_readw (int ) ;
 int fb_writew (unsigned short,int ) ;

int hitfb_blank(int blank_mode, struct fb_info *info)
{
 unsigned short v;

 if (blank_mode) {
  v = fb_readw(HD64461_LDR1);
  v &= ~HD64461_LDR1_DON;
  fb_writew(v, HD64461_LDR1);

  v = fb_readw(HD64461_LCDCCR);
  v |= HD64461_LCDCCR_MOFF;
  fb_writew(v, HD64461_LCDCCR);

  v = fb_readw(HD64461_STBCR);
  v |= HD64461_STBCR_SLCDST;
  fb_writew(v, HD64461_STBCR);
 } else {
  v = fb_readw(HD64461_STBCR);
  v &= ~HD64461_STBCR_SLCDST;
  fb_writew(v, HD64461_STBCR);

  v = fb_readw(HD64461_LCDCCR);
  v &= ~(HD64461_LCDCCR_MOFF | HD64461_LCDCCR_STREQ);
  fb_writew(v, HD64461_LCDCCR);

  do {
      v = fb_readw(HD64461_LCDCCR);
  } while(v&HD64461_LCDCCR_STBACK);

  v = fb_readw(HD64461_LDR1);
  v |= HD64461_LDR1_DON;
  fb_writew(v, HD64461_LDR1);
 }
 return 0;
}
