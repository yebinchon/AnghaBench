
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {int saved_extmem; int saved_intmem; } ;
struct platform_device {int dummy; } ;
struct fb_info {int cmap; int pseudo_palette; struct w100fb_par* par; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int remapped_base ;
 int remapped_fbuf ;
 int remapped_regs ;
 int unregister_framebuffer (struct fb_info*) ;
 int vfree (int ) ;

__attribute__((used)) static int w100fb_remove(struct platform_device *pdev)
{
 struct fb_info *info = platform_get_drvdata(pdev);
 struct w100fb_par *par=info->par;

 unregister_framebuffer(info);

 vfree(par->saved_intmem);
 vfree(par->saved_extmem);
 kfree(info->pseudo_palette);
 fb_dealloc_cmap(&info->cmap);

 iounmap(remapped_base);
 iounmap(remapped_regs);
 iounmap(remapped_fbuf);

 framebuffer_release(info);

 return 0;
}
