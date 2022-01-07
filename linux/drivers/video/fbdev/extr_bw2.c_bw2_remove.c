
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int * resource; int dev; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; int screen_base; struct bw2_par* par; } ;
struct bw2_regs {int dummy; } ;
struct bw2_par {int regs; } ;


 struct fb_info* dev_get_drvdata (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int of_iounmap (int *,int ,int) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int bw2_remove(struct platform_device *op)
{
 struct fb_info *info = dev_get_drvdata(&op->dev);
 struct bw2_par *par = info->par;

 unregister_framebuffer(info);

 of_iounmap(&op->resource[0], par->regs, sizeof(struct bw2_regs));
 of_iounmap(&op->resource[0], info->screen_base, info->fix.smem_len);

 framebuffer_release(info);

 return 0;
}
