
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int LS1X_YEAR_MASK ;
 int SYS_TOYREAD0 ;
 int SYS_TOYREAD1 ;
 int ls1x_get_day (unsigned long) ;
 int ls1x_get_hour (unsigned long) ;
 int ls1x_get_min (unsigned long) ;
 int ls1x_get_month (unsigned long) ;
 int ls1x_get_sec (unsigned long) ;
 int memset (struct rtc_time*,int ,int) ;
 int mktime64 (int,int ,int ,int ,int ,int ) ;
 void* readl (int ) ;
 int rtc_time64_to_tm (int,struct rtc_time*) ;

__attribute__((used)) static int ls1x_rtc_read_time(struct device *dev, struct rtc_time *rtm)
{
 unsigned long v;
 time64_t t;

 v = readl(SYS_TOYREAD0);
 t = readl(SYS_TOYREAD1);

 memset(rtm, 0, sizeof(struct rtc_time));
 t = mktime64((t & LS1X_YEAR_MASK), ls1x_get_month(v),
   ls1x_get_day(v), ls1x_get_hour(v),
   ls1x_get_min(v), ls1x_get_sec(v));
 rtc_time64_to_tm(t, rtm);

 return 0;
}
