
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int rtc_time_to_tm (int ,struct rtc_time*) ;
 int starfire_get_time () ;

__attribute__((used)) static int starfire_read_time(struct device *dev, struct rtc_time *tm)
{
 rtc_time_to_tm(starfire_get_time(), tm);
 return 0;
}
