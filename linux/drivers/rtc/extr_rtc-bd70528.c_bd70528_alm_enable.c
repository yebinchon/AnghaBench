
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct bd70528_rtc {TYPE_1__* mfd; } ;
struct TYPE_4__ {int regmap; } ;


 unsigned int BD70528_MASK_ALM_EN ;
 int BD70528_REG_RTC_ALM_MASK ;
 int bd70528_set_wake (TYPE_1__*,unsigned int,int *) ;
 int bd70528_wdt_lock (TYPE_1__*) ;
 int bd70528_wdt_unlock (TYPE_1__*) ;
 int dev_err (struct device*,char*) ;
 struct bd70528_rtc* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int bd70528_alm_enable(struct device *dev, unsigned int enabled)
{
 int ret;
 unsigned int enableval = BD70528_MASK_ALM_EN;
 struct bd70528_rtc *r = dev_get_drvdata(dev);

 if (enabled)
  enableval = 0;

 bd70528_wdt_lock(r->mfd);
 ret = bd70528_set_wake(r->mfd, enabled, ((void*)0));
 if (ret) {
  dev_err(dev, "Failed to change wake state\n");
  goto out_unlock;
 }
 ret = regmap_update_bits(r->mfd->regmap, BD70528_REG_RTC_ALM_MASK,
     BD70528_MASK_ALM_EN, enableval);
 if (ret)
  dev_err(dev, "Failed to change alarm state\n");

out_unlock:
 bd70528_wdt_unlock(r->mfd);
 return ret;
}
