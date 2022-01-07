
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgi_gbe {int dummy; } ;
struct platform_device {int dev; } ;
struct gbefb_par {int wc_cookie; } ;
struct fb_info {struct gbefb_par* par; } ;


 int GBE_BASE ;
 int arch_phys_wc_del (int ) ;
 int framebuffer_release (struct fb_info*) ;
 int gbe_turn_off () ;
 int gbefb_remove_sysfs (int *) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int gbefb_remove(struct platform_device* p_dev)
{
 struct fb_info *info = platform_get_drvdata(p_dev);
 struct gbefb_par *par = info->par;

 unregister_framebuffer(info);
 gbe_turn_off();
 arch_phys_wc_del(par->wc_cookie);
 release_mem_region(GBE_BASE, sizeof(struct sgi_gbe));
 gbefb_remove_sysfs(&p_dev->dev);
 framebuffer_release(info);

 return 0;
}
