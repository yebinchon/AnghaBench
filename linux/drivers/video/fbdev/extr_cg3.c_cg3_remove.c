
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int * resource; int dev; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; int screen_base; int cmap; struct cg3_par* par; } ;
struct cg3_regs {int dummy; } ;
struct cg3_par {int regs; } ;


 struct fb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int of_iounmap (int *,int ,int) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int cg3_remove(struct platform_device *op)
{
 struct fb_info *info = dev_get_drvdata(&op->dev);
 struct cg3_par *par = info->par;

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);

 of_iounmap(&op->resource[0], par->regs, sizeof(struct cg3_regs));
 of_iounmap(&op->resource[0], info->screen_base, info->fix.smem_len);

 framebuffer_release(info);

 return 0;
}
