
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct thermal_zone_device {int dummy; } ;
struct regmap {int dummy; } ;
struct pmic_thermal_data {int num_maps; TYPE_3__* maps; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {struct regmap* regmap; } ;
typedef int irqreturn_t ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {int num_trips; int handle; TYPE_2__* trip_config; } ;
struct TYPE_6__ {int irq_mask; int evt_stat; int irq_reg; } ;


 int IRQ_HANDLED ;
 int IS_ERR (struct thermal_zone_device*) ;
 int THERMAL_EVENT_UNSPECIFIED ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 TYPE_4__* platform_get_device_id (struct platform_device*) ;
 scalar_t__ regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 int thermal_zone_device_update (struct thermal_zone_device*,int ) ;
 struct thermal_zone_device* thermal_zone_get_zone_by_name (int ) ;

__attribute__((used)) static irqreturn_t pmic_thermal_irq_handler(int irq, void *data)
{
 struct platform_device *pdev = data;
 struct thermal_zone_device *tzd;
 struct pmic_thermal_data *td;
 struct intel_soc_pmic *pmic;
 struct regmap *regmap;
 u8 reg_val, mask, irq_stat;
 u16 reg, evt_stat_reg;
 int i, j, ret;

 pmic = dev_get_drvdata(pdev->dev.parent);
 regmap = pmic->regmap;
 td = (struct pmic_thermal_data *)
  platform_get_device_id(pdev)->driver_data;


 for (i = 0; i < td->num_maps; i++) {
  for (j = 0; j < td->maps[i].num_trips; j++) {
   reg = td->maps[i].trip_config[j].irq_reg;
   mask = td->maps[i].trip_config[j].irq_mask;




   if (regmap_read(regmap, reg, &ret))
    return IRQ_HANDLED;

   reg_val = (u8)ret;
   irq_stat = ((u8)ret & mask);

   if (!irq_stat)
    continue;





   evt_stat_reg = td->maps[i].trip_config[j].evt_stat;
   if (regmap_read(regmap, evt_stat_reg, &ret))
    return IRQ_HANDLED;

   tzd = thermal_zone_get_zone_by_name(td->maps[i].handle);
   if (!IS_ERR(tzd))
    thermal_zone_device_update(tzd,
      THERMAL_EVENT_UNSPECIFIED);


   regmap_write(regmap, reg, reg_val & mask);
  }
 }

 return IRQ_HANDLED;
}
