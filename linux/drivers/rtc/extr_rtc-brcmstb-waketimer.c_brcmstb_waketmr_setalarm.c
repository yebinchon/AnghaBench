
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_wkalrm {int time; scalar_t__ enabled; } ;
struct device {int dummy; } ;
struct brcmstb_waketmr {int dummy; } ;


 int brcmstb_waketmr_set_alarm (struct brcmstb_waketmr*,scalar_t__) ;
 struct brcmstb_waketmr* dev_get_drvdata (struct device*) ;
 scalar_t__ rtc_tm_to_time64 (int *) ;

__attribute__((used)) static int brcmstb_waketmr_setalarm(struct device *dev,
         struct rtc_wkalrm *alarm)
{
 struct brcmstb_waketmr *timer = dev_get_drvdata(dev);
 time64_t sec;

 if (alarm->enabled)
  sec = rtc_tm_to_time64(&alarm->time);
 else
  sec = 0;

 brcmstb_waketmr_set_alarm(timer, sec);

 return 0;
}
