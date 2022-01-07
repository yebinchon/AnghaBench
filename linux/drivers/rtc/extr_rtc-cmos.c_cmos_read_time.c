
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int mc146818_get_time (struct rtc_time*) ;
 int pm_trace_rtc_valid () ;

__attribute__((used)) static int cmos_read_time(struct device *dev, struct rtc_time *t)
{




 if (!pm_trace_rtc_valid())
  return -EIO;





 mc146818_get_time(t);
 return 0;
}
