
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int xres; int yres; int bits_per_pixel; int pixclock; } ;
struct TYPE_3__ {int line_length; int smem_len; int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct clps711x_fb_info* par; } ;
struct clps711x_fb_info {int buffsize; int ac_prescale; int syscon; scalar_t__ base; int clk; } ;
typedef int resource_size_t ;


 scalar_t__ CLPS711X_LCDCON ;
 int EINVAL ;
 int FB_VISUAL_MONO01 ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int LCDCON_GSEN ;
 int LCDCON_GSMD ;
 int PICOS2KHZ (int ) ;
 int SYSCON1_LCDEN ;
 int SYSCON_OFFSET ;
 int clk_get_rate (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clps711x_fb_set_par(struct fb_info *info)
{
 struct clps711x_fb_info *cfb = info->par;
 resource_size_t size;
 u32 lcdcon, pps;

 size = (info->var.xres * info->var.yres * info->var.bits_per_pixel) / 8;
 if (size > cfb->buffsize)
  return -EINVAL;

 switch (info->var.bits_per_pixel) {
 case 1:
  info->fix.visual = FB_VISUAL_MONO01;
  break;
 case 2:
 case 4:
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 default:
  return -EINVAL;
 }

 info->fix.line_length = info->var.xres * info->var.bits_per_pixel / 8;
 info->fix.smem_len = size;

 lcdcon = (info->var.xres * info->var.yres *
    info->var.bits_per_pixel) / 128 - 1;
 lcdcon |= ((info->var.xres / 16) - 1) << 13;
 lcdcon |= (cfb->ac_prescale & 0x1f) << 25;

 pps = clk_get_rate(cfb->clk) / (PICOS2KHZ(info->var.pixclock) * 1000);
 if (pps)
  pps--;
 lcdcon |= (pps & 0x3f) << 19;

 if (info->var.bits_per_pixel == 4)
  lcdcon |= LCDCON_GSMD;
 if (info->var.bits_per_pixel >= 2)
  lcdcon |= LCDCON_GSEN;


 regmap_update_bits(cfb->syscon, SYSCON_OFFSET, SYSCON1_LCDEN, 0);
 writel(lcdcon, cfb->base + CLPS711X_LCDCON);
 regmap_update_bits(cfb->syscon, SYSCON_OFFSET,
      SYSCON1_LCDEN, SYSCON1_LCDEN);

 return 0;
}
