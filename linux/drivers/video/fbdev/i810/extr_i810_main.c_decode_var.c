
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int P; int N; int M; } ;
struct i810fb_par {int pixconf; int bltcntl; int depth; int blit_bpp; int pitch; int watermark; TYPE_2__ regs; } ;
struct TYPE_3__ {int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; int pixclock; scalar_t__ nonstd; TYPE_1__ green; int yres_virtual; int xres_virtual; int yres; int xres; } ;


 int BPP16 ;
 int BPP24 ;
 int BPP8 ;
 int PIXCONF15 ;
 int PIXCONF16 ;
 int PIXCONF24 ;
 int PIXCONF32 ;
 int PIXCONF8 ;
 int get_line_length (struct i810fb_par*,int ,int) ;
 int i810_calc_dclk (int ,int *,int *,int *) ;
 int i810_get_watermark (struct fb_var_screeninfo const*,struct i810fb_par*) ;
 int i810fb_encode_registers (struct fb_var_screeninfo const*,struct i810fb_par*,int ,int ) ;

__attribute__((used)) static void decode_var(const struct fb_var_screeninfo *var,
         struct i810fb_par *par)
{
 u32 xres, yres, vxres, vyres;

 xres = var->xres;
 yres = var->yres;
 vxres = var->xres_virtual;
 vyres = var->yres_virtual;

 switch (var->bits_per_pixel) {
 case 8:
  par->pixconf = PIXCONF8;
  par->bltcntl = 0;
  par->depth = 1;
  par->blit_bpp = BPP8;
  break;
 case 16:
  if (var->green.length == 5)
   par->pixconf = PIXCONF15;
  else
   par->pixconf = PIXCONF16;
  par->bltcntl = 16;
  par->depth = 2;
  par->blit_bpp = BPP16;
  break;
 case 24:
  par->pixconf = PIXCONF24;
  par->bltcntl = 32;
  par->depth = 3;
  par->blit_bpp = BPP24;
  break;
 case 32:
  par->pixconf = PIXCONF32;
  par->bltcntl = 0;
  par->depth = 4;
  par->blit_bpp = 3 << 24;
  break;
 }
 if (var->nonstd && var->bits_per_pixel != 8)
  par->pixconf |= 1 << 27;

 i810_calc_dclk(var->pixclock, &par->regs.M,
         &par->regs.N, &par->regs.P);
 i810fb_encode_registers(var, par, xres, yres);

 par->watermark = i810_get_watermark(var, par);
 par->pitch = get_line_length(par, vxres, var->bits_per_pixel);
}
