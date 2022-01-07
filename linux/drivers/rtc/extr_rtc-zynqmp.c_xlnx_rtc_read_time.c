
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlnx_rtc_dev {scalar_t__ reg_base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_CUR_TM ;
 int RTC_INT_SEC ;
 scalar_t__ RTC_INT_STS ;
 scalar_t__ RTC_SET_TM_RD ;
 struct xlnx_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int xlnx_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 u32 status;
 unsigned long read_time;
 struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);

 status = readl(xrtcdev->reg_base + RTC_INT_STS);

 if (status & RTC_INT_SEC) {




  rtc_time64_to_tm(readl(xrtcdev->reg_base + RTC_CUR_TM), tm);
 } else {







  read_time = readl(xrtcdev->reg_base + RTC_SET_TM_RD) - 1;
  rtc_time64_to_tm(read_time, tm);
 }

 return 0;
}
