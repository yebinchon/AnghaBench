
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int device; struct dove_thermal_priv* devdata; } ;
struct dove_thermal_priv {scalar_t__ sensor; scalar_t__ control; } ;


 unsigned long DOVE_THERMAL_TEMP_MASK ;
 unsigned long DOVE_THERMAL_TEMP_OFFSET ;
 int EIO ;
 unsigned long PMU_TDC1_TEMP_VALID_MASK ;
 scalar_t__ PMU_TEMP_DIOD_CTRL1_REG ;
 int dev_err (int *,char*) ;
 unsigned long readl_relaxed (scalar_t__) ;

__attribute__((used)) static int dove_get_temp(struct thermal_zone_device *thermal,
     int *temp)
{
 unsigned long reg;
 struct dove_thermal_priv *priv = thermal->devdata;


 reg = readl_relaxed(priv->control + PMU_TEMP_DIOD_CTRL1_REG);
 if ((reg & PMU_TDC1_TEMP_VALID_MASK) == 0x0) {
  dev_err(&thermal->device,
   "Temperature sensor reading not valid\n");
  return -EIO;
 }






 reg = readl_relaxed(priv->sensor);
 reg = (reg >> DOVE_THERMAL_TEMP_OFFSET) & DOVE_THERMAL_TEMP_MASK;
 *temp = ((3220000000UL - (10000000UL * reg)) / 13625);

 return 0;
}
