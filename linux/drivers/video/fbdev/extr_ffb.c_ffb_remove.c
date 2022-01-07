
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; int dev; } ;
struct ffb_par {int dac; int fbc; } ;
struct ffb_fbc {int dummy; } ;
struct ffb_dac {int dummy; } ;
struct fb_info {int cmap; struct ffb_par* par; } ;


 struct fb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int of_iounmap (int *,int ,int) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int ffb_remove(struct platform_device *op)
{
 struct fb_info *info = dev_get_drvdata(&op->dev);
 struct ffb_par *par = info->par;

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);

 of_iounmap(&op->resource[2], par->fbc, sizeof(struct ffb_fbc));
 of_iounmap(&op->resource[1], par->dac, sizeof(struct ffb_dac));

 framebuffer_release(info);

 return 0;
}
