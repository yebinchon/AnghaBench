
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct s3fb_info {scalar_t__ chip; } ;
struct fb_var_screeninfo {int xres; int xres_virtual; int yres; int yres_virtual; int bits_per_pixel; int pixclock; } ;
struct fb_info {int screen_size; int node; struct s3fb_info* par; } ;
struct TYPE_3__ {int xresstep; } ;


 scalar_t__ CHIP_988_VIRGE_VX ;
 int EINVAL ;
 int PICOS2KHZ (int ) ;
 int fb_err (struct fb_info*,char*,...) ;
 int s3_pll ;
 int s3_timing_regs ;
 TYPE_1__* s3fb_formats ;
 int svga_check_timings (int *,struct fb_var_screeninfo*,int ) ;
 int svga_compute_pll (int *,int ,int *,int *,int *,int ) ;
 int svga_match_format (TYPE_1__*,struct fb_var_screeninfo*,int *) ;

__attribute__((used)) static int s3fb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct s3fb_info *par = info->par;
 int rv, mem, step;
 u16 m, n, r;


 rv = svga_match_format (s3fb_formats, var, ((void*)0));



 if ((par->chip == CHIP_988_VIRGE_VX) ? (rv == 7) : (rv == 6))
  rv = -EINVAL;

 if (rv < 0) {
  fb_err(info, "unsupported mode requested\n");
  return rv;
 }


 if (var->xres > var->xres_virtual)
  var->xres_virtual = var->xres;

 if (var->yres > var->yres_virtual)
  var->yres_virtual = var->yres;


 step = s3fb_formats[rv].xresstep - 1;
 var->xres_virtual = (var->xres_virtual+step) & ~step;


 mem = ((var->bits_per_pixel * var->xres_virtual) >> 3) * var->yres_virtual;
 if (mem > info->screen_size) {
  fb_err(info, "not enough framebuffer memory (%d kB requested , %u kB available)\n",
         mem >> 10, (unsigned int) (info->screen_size >> 10));
  return -EINVAL;
 }

 rv = svga_check_timings (&s3_timing_regs, var, info->node);
 if (rv < 0) {
  fb_err(info, "invalid timings requested\n");
  return rv;
 }

 rv = svga_compute_pll(&s3_pll, PICOS2KHZ(var->pixclock), &m, &n, &r,
    info->node);
 if (rv < 0) {
  fb_err(info, "invalid pixclock value requested\n");
  return rv;
 }

 return 0;
}
