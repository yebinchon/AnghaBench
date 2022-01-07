
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int ENABLE_ALARM_INT ;
 int TPS80031_RTC_INTERRUPTS_REG ;
 int TPS80031_SLAVE_ID1 ;
 int dev_err (struct device*,char*,int) ;
 int tps80031_clr_bits (int ,int ,int ,int ) ;
 int tps80031_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int tps80031_rtc_alarm_irq_enable(struct device *dev,
      unsigned int enable)
{
 int ret;

 if (enable)
  ret = tps80031_set_bits(dev->parent, TPS80031_SLAVE_ID1,
    TPS80031_RTC_INTERRUPTS_REG, ENABLE_ALARM_INT);
 else
  ret = tps80031_clr_bits(dev->parent, TPS80031_SLAVE_ID1,
    TPS80031_RTC_INTERRUPTS_REG, ENABLE_ALARM_INT);
 if (ret < 0) {
  dev_err(dev, "Update on RTC_INT failed, err = %d\n", ret);
  return ret;
 }
 return 0;
}
