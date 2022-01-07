
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_rtc_dev {unsigned long calibval; scalar_t__ reg_base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 unsigned long RTC_CALIB_MASK ;
 scalar_t__ RTC_CALIB_WR ;
 unsigned long RTC_INT_SEC ;
 scalar_t__ RTC_INT_STS ;
 scalar_t__ RTC_SET_TM_WR ;
 struct xlnx_rtc_dev* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int xlnx_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
 unsigned long new_time;






 new_time = rtc_tm_to_time64(tm) + 1;





 xrtcdev->calibval &= RTC_CALIB_MASK;
 writel(xrtcdev->calibval, (xrtcdev->reg_base + RTC_CALIB_WR));

 writel(new_time, xrtcdev->reg_base + RTC_SET_TM_WR);
 writel(RTC_INT_SEC, xrtcdev->reg_base + RTC_INT_STS);

 return 0;
}
