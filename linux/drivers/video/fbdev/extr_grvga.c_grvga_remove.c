
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; int dev; } ;
struct grvga_par {int fb_alloced; int regs; } ;
struct fb_info {scalar_t__ screen_base; int cmap; struct grvga_par* par; } ;


 struct fb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (scalar_t__) ;
 int kfree (void*) ;
 int of_iounmap (int *,int ,int ) ;
 int resource_size (int *) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int grvga_remove(struct platform_device *device)
{
 struct fb_info *info = dev_get_drvdata(&device->dev);
 struct grvga_par *par;

 if (info) {
  par = info->par;
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);

  of_iounmap(&device->resource[0], par->regs,
      resource_size(&device->resource[0]));

  if (!par->fb_alloced)
   iounmap(info->screen_base);
  else
   kfree((void *)info->screen_base);

  framebuffer_release(info);
 }

 return 0;
}
