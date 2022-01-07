
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AU1000_SYS_TOYREAD ;
 unsigned long alchemy_rdsys (int ) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int au1xtoy_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long t;

 t = alchemy_rdsys(AU1000_SYS_TOYREAD);

 rtc_time_to_tm(t, tm);

 return 0;
}
