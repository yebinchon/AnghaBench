
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int BQ32K_CFG2 ;
 int BQ32K_TCH2 ;
 int EINVAL ;
 int bq32k_write (struct device*,unsigned char*,int ,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int trickle_charger_of_init(struct device *dev, struct device_node *node)
{
 unsigned char reg;
 int error;
 u32 ohms = 0;

 if (of_property_read_u32(node, "trickle-resistor-ohms" , &ohms))
  return 0;

 switch (ohms) {
 case 180+940:





  if (of_property_read_bool(node, "trickle-diode-disable")) {
   dev_err(dev, "diode and resistor mismatch\n");
   return -EINVAL;
  }
  reg = 0x05;
  break;

 case 180+20000:


  if (!of_property_read_bool(node, "trickle-diode-disable")) {
   dev_err(dev, "bq32k: diode and resistor mismatch\n");
   return -EINVAL;
  }
  reg = 0x45;
  break;

 default:
  dev_err(dev, "invalid resistor value (%d)\n", ohms);
  return -EINVAL;
 }

 error = bq32k_write(dev, &reg, BQ32K_CFG2, 1);
 if (error)
  return error;

 reg = 0x20;
 error = bq32k_write(dev, &reg, BQ32K_TCH2, 1);
 if (error)
  return error;

 dev_info(dev, "Enabled trickle RTC battery charge.\n");
 return 0;
}
