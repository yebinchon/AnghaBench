
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static int ftm_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 return 0;
}
