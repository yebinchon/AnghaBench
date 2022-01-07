
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rc5t583 {int regmap; } ;
struct device {int parent; } ;


 int RC5T583_RTC_CTL1 ;
 int SET_YAL ;
 struct rc5t583* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rc5t583_rtc_alarm_irq_enable(struct device *dev, unsigned enabled)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(dev->parent);
 u8 val;


 val = enabled ? SET_YAL : 0;

 return regmap_update_bits(rc5t583->regmap, RC5T583_RTC_CTL1, SET_YAL,
  val);
}
