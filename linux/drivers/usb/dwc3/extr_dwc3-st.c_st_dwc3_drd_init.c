
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_dwc3 {int dr_mode; int syscfg_reg_off; int regmap; int dev; } ;


 int EINVAL ;
 int USB3_CONTROL_MASK ;
 int USB3_DELAY_VBUSVALID ;
 int USB3_DEVICE_NOT_HOST ;
 int USB3_FORCE_DMPULLDOWN2 ;
 int USB3_FORCE_DPPULLDOWN2 ;
 int USB3_FORCE_OPMODE (int) ;
 int USB3_FORCE_VBUSVALID ;
 int USB3_SEL_FORCE_DMPULLDOWN2 ;
 int USB3_SEL_FORCE_DPPULLDOWN2 ;
 int USB3_SEL_FORCE_OPMODE ;


 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int st_dwc3_drd_init(struct st_dwc3 *dwc3_data)
{
 u32 val;
 int err;

 err = regmap_read(dwc3_data->regmap, dwc3_data->syscfg_reg_off, &val);
 if (err)
  return err;

 val &= USB3_CONTROL_MASK;

 switch (dwc3_data->dr_mode) {
 case 128:

  val &= ~(USB3_DELAY_VBUSVALID
   | USB3_SEL_FORCE_OPMODE | USB3_FORCE_OPMODE(0x3)
   | USB3_SEL_FORCE_DPPULLDOWN2 | USB3_FORCE_DPPULLDOWN2
   | USB3_SEL_FORCE_DMPULLDOWN2 | USB3_FORCE_DMPULLDOWN2);







  val |= USB3_DEVICE_NOT_HOST | USB3_FORCE_VBUSVALID;
  break;

 case 129:

  val &= ~(USB3_DEVICE_NOT_HOST | USB3_FORCE_VBUSVALID
   | USB3_SEL_FORCE_OPMODE | USB3_FORCE_OPMODE(0x3)
   | USB3_SEL_FORCE_DPPULLDOWN2 | USB3_FORCE_DPPULLDOWN2
   | USB3_SEL_FORCE_DMPULLDOWN2 | USB3_FORCE_DMPULLDOWN2);
  val |= USB3_DELAY_VBUSVALID;
  break;

 default:
  dev_err(dwc3_data->dev, "Unsupported mode of operation %d\n",
   dwc3_data->dr_mode);
  return -EINVAL;
 }

 return regmap_write(dwc3_data->regmap, dwc3_data->syscfg_reg_off, val);
}
