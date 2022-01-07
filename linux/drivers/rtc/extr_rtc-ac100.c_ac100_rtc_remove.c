
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ac100_rtc_dev {int dummy; } ;


 int ac100_rtc_unregister_clks (struct ac100_rtc_dev*) ;
 struct ac100_rtc_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ac100_rtc_remove(struct platform_device *pdev)
{
 struct ac100_rtc_dev *chip = platform_get_drvdata(pdev);

 ac100_rtc_unregister_clks(chip);

 return 0;
}
