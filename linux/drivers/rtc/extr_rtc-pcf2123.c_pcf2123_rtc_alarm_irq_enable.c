
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf2123_data {int map; } ;
struct device {int dummy; } ;


 int CTRL2_AIE ;
 int PCF2123_REG_CTRL2 ;
 struct pcf2123_data* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pcf2123_rtc_alarm_irq_enable(struct device *dev, unsigned int en)
{
 struct pcf2123_data *pcf2123 = dev_get_drvdata(dev);

 return regmap_update_bits(pcf2123->map, PCF2123_REG_CTRL2, CTRL2_AIE,
      en ? CTRL2_AIE : 0);
}
