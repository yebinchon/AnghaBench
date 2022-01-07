
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wktmr_time {int sec; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_waketmr {int dummy; } ;


 struct brcmstb_waketmr* dev_get_drvdata (struct device*) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;
 int wktmr_read (struct brcmstb_waketmr*,struct wktmr_time*) ;

__attribute__((used)) static int brcmstb_waketmr_gettime(struct device *dev,
       struct rtc_time *tm)
{
 struct brcmstb_waketmr *timer = dev_get_drvdata(dev);
 struct wktmr_time now;

 wktmr_read(timer, &now);

 rtc_time64_to_tm(now.sec, tm);

 return 0;
}
