
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fan53555_platform_data {int sleep_vsel_id; } ;
struct fan53555_device_info {int vendor; int dev; int mode_mask; void* vol_reg; void* mode_reg; void* sleep_reg; } ;


 int CTL_MODE_VSEL0_MODE ;
 int CTL_MODE_VSEL1_MODE ;
 int EINVAL ;

 void* FAN53555_CONTROL ;


 void* FAN53555_VSEL0 ;
 void* FAN53555_VSEL1 ;


 int VSEL_MODE ;
 int dev_err (int ,char*,...) ;
 int fan53526_voltages_setup_fairchild (struct fan53555_device_info*) ;
 int fan53555_voltages_setup_fairchild (struct fan53555_device_info*) ;
 int fan53555_voltages_setup_silergy (struct fan53555_device_info*) ;

__attribute__((used)) static int fan53555_device_setup(struct fan53555_device_info *di,
    struct fan53555_platform_data *pdata)
{
 int ret = 0;


 switch (pdata->sleep_vsel_id) {
 case 129:
  di->sleep_reg = FAN53555_VSEL0;
  di->vol_reg = FAN53555_VSEL1;
  break;
 case 128:
  di->sleep_reg = FAN53555_VSEL1;
  di->vol_reg = FAN53555_VSEL0;
  break;
 default:
  dev_err(di->dev, "Invalid VSEL ID!\n");
  return -EINVAL;
 }


 switch (di->vendor) {
 case 132:
  di->mode_reg = FAN53555_CONTROL;

  switch (pdata->sleep_vsel_id) {
  case 129:
   di->mode_mask = CTL_MODE_VSEL1_MODE;
   break;
  case 128:
   di->mode_mask = CTL_MODE_VSEL0_MODE;
   break;
  }
  break;
 case 131:
 case 130:
  di->mode_reg = di->vol_reg;
  di->mode_mask = VSEL_MODE;
  break;
 default:
  dev_err(di->dev, "vendor %d not supported!\n", di->vendor);
  return -EINVAL;
 }


 switch (di->vendor) {
 case 132:
  ret = fan53526_voltages_setup_fairchild(di);
  break;
 case 131:
  ret = fan53555_voltages_setup_fairchild(di);
  break;
 case 130:
  ret = fan53555_voltages_setup_silergy(di);
  break;
 default:
  dev_err(di->dev, "vendor %d not supported!\n", di->vendor);
  return -EINVAL;
 }

 return ret;
}
