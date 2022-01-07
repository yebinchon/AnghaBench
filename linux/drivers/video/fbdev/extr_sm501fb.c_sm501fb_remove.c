
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_info {struct fb_info** fb; } ;
struct platform_device {int dummy; } ;
struct fb_info {int dummy; } ;


 int HEAD_CRT ;
 int HEAD_PANEL ;
 int framebuffer_release (struct fb_info*) ;
 int kfree (struct sm501fb_info*) ;
 struct sm501fb_info* platform_get_drvdata (struct platform_device*) ;
 int sm501_free_init_fb (struct sm501fb_info*,int ) ;
 int sm501fb_stop (struct sm501fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int sm501fb_remove(struct platform_device *pdev)
{
 struct sm501fb_info *info = platform_get_drvdata(pdev);
 struct fb_info *fbinfo_crt = info->fb[0];
 struct fb_info *fbinfo_pnl = info->fb[1];

 sm501_free_init_fb(info, HEAD_CRT);
 sm501_free_init_fb(info, HEAD_PANEL);

 if (fbinfo_crt)
  unregister_framebuffer(fbinfo_crt);
 if (fbinfo_pnl)
  unregister_framebuffer(fbinfo_pnl);

 sm501fb_stop(info);
 kfree(info);

 framebuffer_release(fbinfo_pnl);
 framebuffer_release(fbinfo_crt);

 return 0;
}
