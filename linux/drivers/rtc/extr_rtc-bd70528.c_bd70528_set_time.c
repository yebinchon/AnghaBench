
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct bd70528_rtc {int mfd; } ;


 int bd70528_set_time_locked (struct device*,struct rtc_time*) ;
 int bd70528_wdt_lock (int ) ;
 int bd70528_wdt_unlock (int ) ;
 struct bd70528_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int bd70528_set_time(struct device *dev, struct rtc_time *t)
{
 int ret;
 struct bd70528_rtc *r = dev_get_drvdata(dev);

 bd70528_wdt_lock(r->mfd);
 ret = bd70528_set_time_locked(dev, t);
 bd70528_wdt_unlock(r->mfd);
 return ret;
}
