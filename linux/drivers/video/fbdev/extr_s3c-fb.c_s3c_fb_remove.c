
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_clksel; } ;
struct s3c_fb {int dev; int bus_clk; int lcd_clk; TYPE_1__ variant; scalar_t__* windows; } ;
struct platform_device {int dummy; } ;


 int S3C_FB_MAX_WIN ;
 int clk_disable_unprepare (int ) ;
 struct s3c_fb* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int s3c_fb_release_win (struct s3c_fb*,scalar_t__) ;

__attribute__((used)) static int s3c_fb_remove(struct platform_device *pdev)
{
 struct s3c_fb *sfb = platform_get_drvdata(pdev);
 int win;

 pm_runtime_get_sync(sfb->dev);

 for (win = 0; win < S3C_FB_MAX_WIN; win++)
  if (sfb->windows[win])
   s3c_fb_release_win(sfb, sfb->windows[win]);

 if (!sfb->variant.has_clksel)
  clk_disable_unprepare(sfb->lcd_clk);

 clk_disable_unprepare(sfb->bus_clk);

 pm_runtime_put_sync(sfb->dev);
 pm_runtime_disable(sfb->dev);

 return 0;
}
