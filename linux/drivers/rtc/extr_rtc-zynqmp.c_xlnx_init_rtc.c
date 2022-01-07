
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlnx_rtc_dev {scalar_t__ reg_base; int calibval; } ;


 int RTC_BATT_EN ;
 int RTC_CALIB_MASK ;
 scalar_t__ RTC_CALIB_WR ;
 scalar_t__ RTC_CTRL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlnx_init_rtc(struct xlnx_rtc_dev *xrtcdev)
{
 u32 rtc_ctrl;


 rtc_ctrl = readl(xrtcdev->reg_base + RTC_CTRL);
 rtc_ctrl |= RTC_BATT_EN;
 writel(rtc_ctrl, xrtcdev->reg_base + RTC_CTRL);







 xrtcdev->calibval &= RTC_CALIB_MASK;
 writel(xrtcdev->calibval, (xrtcdev->reg_base + RTC_CALIB_WR));
}
