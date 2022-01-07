
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int device; struct kirkwood_thermal_priv* devdata; } ;
struct kirkwood_thermal_priv {int sensor; } ;


 int EIO ;
 unsigned long KIRKWOOD_THERMAL_TEMP_MASK ;
 unsigned long KIRKWOOD_THERMAL_TEMP_OFFSET ;
 unsigned long KIRKWOOD_THERMAL_VALID_MASK ;
 unsigned long KIRKWOOD_THERMAL_VALID_OFFSET ;
 int dev_err (int *,char*) ;
 unsigned long readl_relaxed (int ) ;

__attribute__((used)) static int kirkwood_get_temp(struct thermal_zone_device *thermal,
     int *temp)
{
 unsigned long reg;
 struct kirkwood_thermal_priv *priv = thermal->devdata;

 reg = readl_relaxed(priv->sensor);


 if (!((reg >> KIRKWOOD_THERMAL_VALID_OFFSET) &
     KIRKWOOD_THERMAL_VALID_MASK)) {
  dev_err(&thermal->device,
   "Temperature sensor reading not valid\n");
  return -EIO;
 }






 reg = (reg >> KIRKWOOD_THERMAL_TEMP_OFFSET) &
  KIRKWOOD_THERMAL_TEMP_MASK;
 *temp = ((3220000000UL - (10000000UL * reg)) / 13625);

 return 0;
}
