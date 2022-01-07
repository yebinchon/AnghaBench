
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fb_info {int cmap; struct cg6_par* par; } ;
struct cg6_par {int dummy; } ;


 int cg6_unmap_regs (struct platform_device*,struct fb_info*,struct cg6_par*) ;
 struct fb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int cg6_remove(struct platform_device *op)
{
 struct fb_info *info = dev_get_drvdata(&op->dev);
 struct cg6_par *par = info->par;

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);

 cg6_unmap_regs(op, info, par);

 framebuffer_release(info);

 return 0;
}
