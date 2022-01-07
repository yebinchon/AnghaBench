
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fan53555_device_info {int chip_id; int vsel_min; int vsel_step; int vsel_count; int dev; } ;


 int EINVAL ;
 int FAN53555_NVOLTAGES ;

 int dev_err (int ,char*,int) ;

__attribute__((used)) static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
{

 switch (di->chip_id) {
 case 128:
  di->vsel_min = 712500;
  di->vsel_step = 12500;
  break;
 default:
  dev_err(di->dev,
   "Chip ID %d not supported!\n", di->chip_id);
  return -EINVAL;
 }

 di->vsel_count = FAN53555_NVOLTAGES;

 return 0;
}
