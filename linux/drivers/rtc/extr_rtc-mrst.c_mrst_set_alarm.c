
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct mrst_rtc {int irq; } ;
struct device {int dummy; } ;


 int EIO ;
 int IPCMSG_VRTC ;
 int IPC_CMD_VRTC_SETALARM ;
 int RTC_AIE ;
 int RTC_HOURS_ALARM ;
 int RTC_MINUTES_ALARM ;
 int RTC_SECONDS_ALARM ;
 struct mrst_rtc* dev_get_drvdata (struct device*) ;
 int intel_scu_ipc_simple_command (int ,int ) ;
 int mrst_irq_disable (struct mrst_rtc*,int ) ;
 int mrst_irq_enable (struct mrst_rtc*,int ) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vrtc_cmos_write (unsigned char,int ) ;

__attribute__((used)) static int mrst_set_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct mrst_rtc *mrst = dev_get_drvdata(dev);
 unsigned char hrs, min, sec;
 int ret = 0;

 if (!mrst->irq)
  return -EIO;

 hrs = t->time.tm_hour;
 min = t->time.tm_min;
 sec = t->time.tm_sec;

 spin_lock_irq(&rtc_lock);

 mrst_irq_disable(mrst, RTC_AIE);


 vrtc_cmos_write(hrs, RTC_HOURS_ALARM);
 vrtc_cmos_write(min, RTC_MINUTES_ALARM);
 vrtc_cmos_write(sec, RTC_SECONDS_ALARM);

 spin_unlock_irq(&rtc_lock);

 ret = intel_scu_ipc_simple_command(IPCMSG_VRTC, IPC_CMD_VRTC_SETALARM);
 if (ret)
  return ret;

 spin_lock_irq(&rtc_lock);
 if (t->enabled)
  mrst_irq_enable(mrst, RTC_AIE);

 spin_unlock_irq(&rtc_lock);

 return 0;
}
