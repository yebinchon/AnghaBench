
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max8997_rtc_info {int dummy; } ;


 int max8997_rtc_enable_smpl (struct max8997_rtc_info*,int) ;
 int max8997_rtc_enable_wtsr (struct max8997_rtc_info*,int) ;
 struct max8997_rtc_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void max8997_rtc_shutdown(struct platform_device *pdev)
{
 struct max8997_rtc_info *info = platform_get_drvdata(pdev);

 max8997_rtc_enable_wtsr(info, 0);
 max8997_rtc_enable_smpl(info, 0);
}
