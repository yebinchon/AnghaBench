
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_rtc_info {int i2c; int calib_work; } ;
struct platform_device {int dummy; } ;


 int MEAS2_VRTC ;
 int PM8607_MEAS_EN2 ;
 int cancel_delayed_work_sync (int *) ;
 struct pm860x_rtc_info* platform_get_drvdata (struct platform_device*) ;
 int pm860x_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pm860x_rtc_remove(struct platform_device *pdev)
{
 struct pm860x_rtc_info *info = platform_get_drvdata(pdev);







 return 0;
}
