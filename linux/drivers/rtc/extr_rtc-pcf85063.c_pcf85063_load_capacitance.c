
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pcf85063 {int regmap; TYPE_1__* rtc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int PCF85063_REG_CTRL1 ;
 int PCF85063_REG_CTRL1_CAP_SEL ;
 int dev_warn (int *,char*,int) ;
 int of_property_read_u32 (struct device_node const*,char*,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pcf85063_load_capacitance(struct pcf85063 *pcf85063,
         const struct device_node *np,
         unsigned int force_cap)
{
 u32 load = 7000;
 u8 reg = 0;

 if (force_cap)
  load = force_cap;
 else
  of_property_read_u32(np, "quartz-load-femtofarads", &load);

 switch (load) {
 default:
  dev_warn(&pcf85063->rtc->dev, "Unknown quartz-load-femtofarads value: %d. Assuming 7000",
    load);

 case 7000:
  break;
 case 12500:
  reg = PCF85063_REG_CTRL1_CAP_SEL;
  break;
 }

 return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL1,
      PCF85063_REG_CTRL1_CAP_SEL, reg);
}
