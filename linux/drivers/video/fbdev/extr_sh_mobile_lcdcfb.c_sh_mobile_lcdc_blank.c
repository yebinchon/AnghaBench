
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {int dummy; } ;
struct sh_mobile_lcdc_chan {int blank_status; int yres; int xres; struct sh_mobile_lcdc_priv* lcdc; } ;
struct fb_info {int fbdefio; struct sh_mobile_lcdc_chan* par; } ;
struct fb_fillrect {int height; int width; } ;


 int FB_BLANK_NORMAL ;
 int FB_BLANK_UNBLANK ;
 int sh_mobile_lcdc_clk_off (struct sh_mobile_lcdc_priv*) ;
 int sh_mobile_lcdc_clk_on (struct sh_mobile_lcdc_priv*) ;
 int sh_mobile_lcdc_fillrect (struct fb_info*,struct fb_fillrect*) ;
 int sh_mobile_lcdc_wait_for_vsync (struct sh_mobile_lcdc_chan*) ;

__attribute__((used)) static int sh_mobile_lcdc_blank(int blank, struct fb_info *info)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 struct sh_mobile_lcdc_priv *p = ch->lcdc;


 if (blank > FB_BLANK_UNBLANK && ch->blank_status == FB_BLANK_UNBLANK) {
  struct fb_fillrect rect = {
   .width = ch->xres,
   .height = ch->yres,
  };
  sh_mobile_lcdc_fillrect(info, &rect);
 }

 if (blank <= FB_BLANK_NORMAL && ch->blank_status > FB_BLANK_NORMAL) {
  sh_mobile_lcdc_clk_on(p);
 }

 if (blank > FB_BLANK_NORMAL && ch->blank_status <= FB_BLANK_NORMAL) {





  if (!info->fbdefio) {
   sh_mobile_lcdc_wait_for_vsync(ch);
   sh_mobile_lcdc_wait_for_vsync(ch);
  }
  sh_mobile_lcdc_clk_off(p);
 }

 ch->blank_status = blank;
 return 0;
}
