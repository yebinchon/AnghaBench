
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_hi_font_mask; } ;


 int scr_readw (int ) ;
 int screenpos (struct vc_data*,int,int) ;

u16 screen_glyph(struct vc_data *vc, int offset)
{
 u16 w = scr_readw(screenpos(vc, offset, 1));
 u16 c = w & 0xff;

 if (w & vc->vc_hi_font_mask)
  c |= 0x100;
 return c;
}
