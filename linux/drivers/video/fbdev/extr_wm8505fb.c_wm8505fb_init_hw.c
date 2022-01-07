
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int smem_start; } ;
struct TYPE_5__ {TYPE_1__ fix; } ;
struct wm8505fb_info {scalar_t__ regbase; TYPE_2__ fb; } ;
struct TYPE_6__ {int xres; int xres_virtual; } ;
struct fb_info {TYPE_3__ var; } ;


 scalar_t__ WMT_GOVR_COLORSPACE ;
 scalar_t__ WMT_GOVR_COLORSPACE1 ;
 scalar_t__ WMT_GOVR_DVO_SET ;
 scalar_t__ WMT_GOVR_FBADDR ;
 scalar_t__ WMT_GOVR_FBADDR1 ;
 scalar_t__ WMT_GOVR_FHI ;
 scalar_t__ WMT_GOVR_MIF_ENABLE ;
 scalar_t__ WMT_GOVR_REG_UPDATE ;
 scalar_t__ WMT_GOVR_XRES ;
 scalar_t__ WMT_GOVR_XRES_VIRTUAL ;
 struct wm8505fb_info* to_wm8505fb_info (struct fb_info*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int wm8505fb_init_hw(struct fb_info *info)
{
 struct wm8505fb_info *fbi = to_wm8505fb_info(info);

 int i;


 for (i = 0; i < 0x200; i += 4)
  writel(0, fbi->regbase + i);


 writel(fbi->fb.fix.smem_start, fbi->regbase + WMT_GOVR_FBADDR);
 writel(fbi->fb.fix.smem_start, fbi->regbase + WMT_GOVR_FBADDR1);






 writel(0x31c, fbi->regbase + WMT_GOVR_COLORSPACE);
 writel(1, fbi->regbase + WMT_GOVR_COLORSPACE1);


 writel(info->var.xres, fbi->regbase + WMT_GOVR_XRES);
 writel(info->var.xres_virtual, fbi->regbase + WMT_GOVR_XRES_VIRTUAL);


 writel(0xf, fbi->regbase + WMT_GOVR_FHI);
 writel(4, fbi->regbase + WMT_GOVR_DVO_SET);
 writel(1, fbi->regbase + WMT_GOVR_MIF_ENABLE);
 writel(1, fbi->regbase + WMT_GOVR_REG_UPDATE);

 return 0;
}
