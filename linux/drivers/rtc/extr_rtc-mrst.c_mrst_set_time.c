
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned int tm_year; int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int IPCMSG_VRTC ;
 int IPC_CMD_VRTC_SETTIME ;
 int RTC_DAY_OF_MONTH ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_YEAR ;
 int intel_scu_ipc_simple_command (int ,int ) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vrtc_cmos_write (unsigned char,int ) ;

__attribute__((used)) static int mrst_set_time(struct device *dev, struct rtc_time *time)
{
 int ret;
 unsigned long flags;
 unsigned char mon, day, hrs, min, sec;
 unsigned int yrs;

 yrs = time->tm_year;
 mon = time->tm_mon + 1;
 day = time->tm_mday;
 hrs = time->tm_hour;
 min = time->tm_min;
 sec = time->tm_sec;

 if (yrs < 72 || yrs > 172)
  return -EINVAL;
 yrs -= 72;

 spin_lock_irqsave(&rtc_lock, flags);

 vrtc_cmos_write(yrs, RTC_YEAR);
 vrtc_cmos_write(mon, RTC_MONTH);
 vrtc_cmos_write(day, RTC_DAY_OF_MONTH);
 vrtc_cmos_write(hrs, RTC_HOURS);
 vrtc_cmos_write(min, RTC_MINUTES);
 vrtc_cmos_write(sec, RTC_SECONDS);

 spin_unlock_irqrestore(&rtc_lock, flags);

 ret = intel_scu_ipc_simple_command(IPCMSG_VRTC, IPC_CMD_VRTC_SETTIME);
 return ret;
}
