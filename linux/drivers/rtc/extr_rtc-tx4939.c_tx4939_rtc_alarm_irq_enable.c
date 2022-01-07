
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx4939rtc_plat_data {int lock; int rtcreg; } ;
struct device {int dummy; } ;


 int TX4939_RTCCTL_ALME ;
 int TX4939_RTCCTL_COMMAND_NOP ;
 struct tx4939rtc_plat_data* dev_get_drvdata (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tx4939_rtc_cmd (int ,int) ;

__attribute__((used)) static int tx4939_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct tx4939rtc_plat_data *pdata = dev_get_drvdata(dev);

 spin_lock_irq(&pdata->lock);
 tx4939_rtc_cmd(pdata->rtcreg,
         TX4939_RTCCTL_COMMAND_NOP |
         (enabled ? TX4939_RTCCTL_ALME : 0));
 spin_unlock_irq(&pdata->lock);
 return 0;
}
