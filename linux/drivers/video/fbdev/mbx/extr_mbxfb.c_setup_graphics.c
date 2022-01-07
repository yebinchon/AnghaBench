
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
struct TYPE_4__ {int bits_per_pixel; TYPE_1__ green; int yres; int xres; } ;
struct fb_info {TYPE_2__ var; } ;


 unsigned long FMsk (int ) ;
 int GBBASE ;
 int GDRCTRL ;
 int GPLUT ;
 int GSCADR ;
 unsigned long GSCADR_STR_EN ;
 int GSCTRL ;
 unsigned long GSCTRL_GAMMA_EN ;
 unsigned long GSCTRL_GPIXFMT_ARGB1555 ;
 unsigned long GSCTRL_GPIXFMT_ARGB8888 ;
 unsigned long GSCTRL_GPIXFMT_RGB565 ;
 unsigned long GSCTRL_GPIXFMT_RGB888 ;
 unsigned long Gscadr_Gbase_Adr (int) ;
 unsigned long Gsctrl_Height (int ) ;
 unsigned long Gsctrl_Width (int ) ;
 int VSCADR ;
 int VSCADR_BLEND_M ;
 unsigned long VSCADR_BLEND_NONE ;
 int VSCADR_BLEND_POS ;
 unsigned long VSCADR_BLEND_VID ;
 unsigned long readl (int ) ;
 int write_reg_dly (unsigned long,int ) ;

__attribute__((used)) static void setup_graphics(struct fb_info *fbi)
{
 unsigned long gsctrl;
 unsigned long vscadr;

 gsctrl = GSCTRL_GAMMA_EN | Gsctrl_Width(fbi->var.xres) |
  Gsctrl_Height(fbi->var.yres);
 switch (fbi->var.bits_per_pixel) {
 case 16:
  if (fbi->var.green.length == 5)
   gsctrl |= GSCTRL_GPIXFMT_ARGB1555;
  else
   gsctrl |= GSCTRL_GPIXFMT_RGB565;
  break;
 case 24:
  gsctrl |= GSCTRL_GPIXFMT_RGB888;
  break;
 case 32:
  gsctrl |= GSCTRL_GPIXFMT_ARGB8888;
  break;
 }

 write_reg_dly(gsctrl, GSCTRL);
 write_reg_dly(0x00000000, GBBASE);
 write_reg_dly(0x00ffffff, GDRCTRL);
 write_reg_dly((GSCADR_STR_EN | Gscadr_Gbase_Adr(0x6000)), GSCADR);
 write_reg_dly(0x00000000, GPLUT);

 vscadr = readl(VSCADR);
 vscadr &= ~(FMsk(VSCADR_BLEND_POS) | FMsk(VSCADR_BLEND_M));
 vscadr |= VSCADR_BLEND_VID | VSCADR_BLEND_NONE;
 write_reg_dly(vscadr, VSCADR);
}
