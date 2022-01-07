
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;


 int ENOIOCTLCMD ;
 int PRTCSS_RTC_CTRL ;
 int PRTCSS_RTC_CTRL_WDTFLG ;
 int PRTCSS_RTC_CTRL_WEN ;


 int davinci_rtc_lock ;
 struct davinci_rtc* dev_get_drvdata (struct device*) ;
 int rtcss_read (struct davinci_rtc*,int ) ;
 int rtcss_write (struct davinci_rtc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
davinci_rtc_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 struct davinci_rtc *davinci_rtc = dev_get_drvdata(dev);
 u8 rtc_ctrl;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&davinci_rtc_lock, flags);

 rtc_ctrl = rtcss_read(davinci_rtc, PRTCSS_RTC_CTRL);

 switch (cmd) {
 case 128:
  rtc_ctrl |= PRTCSS_RTC_CTRL_WEN | PRTCSS_RTC_CTRL_WDTFLG;
  break;
 case 129:
  rtc_ctrl &= ~PRTCSS_RTC_CTRL_WEN;
  break;
 default:
  ret = -ENOIOCTLCMD;
 }

 rtcss_write(davinci_rtc, rtc_ctrl, PRTCSS_RTC_CTRL);

 spin_unlock_irqrestore(&davinci_rtc_lock, flags);

 return ret;
}
