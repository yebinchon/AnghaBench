
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int mc146818_set_time (struct rtc_time*) ;

__attribute__((used)) static int cmos_set_time(struct device *dev, struct rtc_time *t)
{






 return mc146818_set_time(t);
}
