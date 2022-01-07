
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {scalar_t__ id; } ;



__attribute__((used)) static bool is_rtc_hctosys(struct rtc_device *rtc)
{
 return (rtc->id == 0);
}
