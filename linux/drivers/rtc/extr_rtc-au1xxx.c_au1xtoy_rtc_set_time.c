
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AU1000_SYS_CNTRCTRL ;
 int AU1000_SYS_TOYWRITE ;
 int SYS_CNTRL_C0S ;
 int alchemy_rdsys (int ) ;
 int alchemy_wrsys (unsigned long,int ) ;
 int msleep (int) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int au1xtoy_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long t;

 rtc_tm_to_time(tm, &t);

 alchemy_wrsys(t, AU1000_SYS_TOYWRITE);




 while (alchemy_rdsys(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_C0S)
  msleep(1);

 return 0;
}
