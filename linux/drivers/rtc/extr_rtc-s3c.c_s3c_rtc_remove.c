
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_rtc {int rtc_clk; int rtc_src_clk; TYPE_1__* data; int dev; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ needs_src_clk; } ;


 int clk_unprepare (int ) ;
 struct s3c_rtc* platform_get_drvdata (struct platform_device*) ;
 int s3c_rtc_setaie (int ,int ) ;

__attribute__((used)) static int s3c_rtc_remove(struct platform_device *pdev)
{
 struct s3c_rtc *info = platform_get_drvdata(pdev);

 s3c_rtc_setaie(info->dev, 0);

 if (info->data->needs_src_clk)
  clk_unprepare(info->rtc_src_clk);
 clk_unprepare(info->rtc_clk);

 return 0;
}
