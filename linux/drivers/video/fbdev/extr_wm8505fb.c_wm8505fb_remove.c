
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ cmap; } ;
struct wm8505fb_info {TYPE_1__ fb; int regbase; } ;
struct platform_device {int dummy; } ;


 int fb_dealloc_cmap (TYPE_2__*) ;
 struct wm8505fb_info* platform_get_drvdata (struct platform_device*) ;
 int unregister_framebuffer (TYPE_1__*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int wm8505fb_remove(struct platform_device *pdev)
{
 struct wm8505fb_info *fbi = platform_get_drvdata(pdev);

 unregister_framebuffer(&fbi->fb);

 writel(0, fbi->regbase);

 if (fbi->fb.cmap.len)
  fb_dealloc_cmap(&fbi->fb.cmap);

 return 0;
}
