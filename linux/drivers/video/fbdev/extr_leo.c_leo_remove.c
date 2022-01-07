
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct leo_par {int dummy; } ;
struct fb_info {int cmap; struct leo_par* par; } ;


 struct fb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int leo_unmap_regs (struct platform_device*,struct fb_info*,struct leo_par*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int leo_remove(struct platform_device *op)
{
 struct fb_info *info = dev_get_drvdata(&op->dev);
 struct leo_par *par = info->par;

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);

 leo_unmap_regs(op, info, par);

 framebuffer_release(info);

 return 0;
}
