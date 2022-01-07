
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fb_info {int cmap; struct clps711x_fb_info* par; } ;
struct clps711x_fb_info {int syscon; } ;


 int SYSCON1_LCDEN ;
 int SYSCON_OFFSET ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int clps711x_fb_remove(struct platform_device *pdev)
{
 struct fb_info *info = platform_get_drvdata(pdev);
 struct clps711x_fb_info *cfb = info->par;

 regmap_update_bits(cfb->syscon, SYSCON_OFFSET, SYSCON1_LCDEN, 0);

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);

 return 0;
}
