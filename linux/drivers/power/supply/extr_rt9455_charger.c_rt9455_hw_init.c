
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt9455_info {int voreg; int * regmap_fields; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int*) ;
 size_t F_BATD_EN ;
 size_t F_CHMIVRIM ;
 int F_IAICR ;
 size_t F_IAICR_INT ;
 int F_ICHRG ;
 int F_IEOC_PERCENTAGE ;
 int F_MIVR ;
 size_t F_TE ;
 size_t F_TE_SHDN_EN ;
 size_t F_TMR_EN ;
 int F_VMREG ;
 int F_VOREG ;
 int dev_err (struct device*,char*) ;
 int regmap_field_write (int ,int) ;
 int* rt9455_iaicr_values ;
 int* rt9455_ichrg_values ;
 int* rt9455_ieoc_percentage_values ;
 int* rt9455_mivr_values ;
 int rt9455_register_reset (struct rt9455_info*) ;
 int rt9455_set_field_val (struct rt9455_info*,int ,int*,int,int) ;
 int* rt9455_vmreg_values ;
 int* rt9455_voreg_values ;

__attribute__((used)) static int rt9455_hw_init(struct rt9455_info *info, u32 ichrg,
     u32 ieoc_percentage,
     u32 mivr, u32 iaicr)
{
 struct device *dev = &info->client->dev;
 int idx, ret;

 ret = rt9455_register_reset(info);
 if (ret) {
  dev_err(dev, "Power On Reset failed\n");
  return ret;
 }


 ret = regmap_field_write(info->regmap_fields[F_TE], 1);
 if (ret) {
  dev_err(dev, "Failed to set TE bit\n");
  return ret;
 }


 ret = regmap_field_write(info->regmap_fields[F_TE_SHDN_EN], 1);
 if (ret) {
  dev_err(dev, "Failed to set TE_SHDN_EN bit\n");
  return ret;
 }





 ret = regmap_field_write(info->regmap_fields[F_BATD_EN], 1);
 if (ret) {
  dev_err(dev, "Failed to set BATD_EN bit\n");
  return ret;
 }
 ret = regmap_field_write(info->regmap_fields[F_TMR_EN], 0x00);
 if (ret) {
  dev_err(dev, "Failed to disable Safety Timer\n");
  return ret;
 }


 ret = rt9455_set_field_val(info, F_ICHRG,
       rt9455_ichrg_values,
       ARRAY_SIZE(rt9455_ichrg_values), ichrg);
 if (ret) {
  dev_err(dev, "Failed to set ICHRG value\n");
  return ret;
 }


 ret = rt9455_set_field_val(info, F_IEOC_PERCENTAGE,
       rt9455_ieoc_percentage_values,
       ARRAY_SIZE(rt9455_ieoc_percentage_values),
       ieoc_percentage);
 if (ret) {
  dev_err(dev, "Failed to set IEOC Percentage value\n");
  return ret;
 }


 ret = rt9455_set_field_val(info, F_VOREG,
       rt9455_voreg_values,
       ARRAY_SIZE(rt9455_voreg_values),
       info->voreg);
 if (ret) {
  dev_err(dev, "Failed to set VOREG value\n");
  return ret;
 }


 idx = ARRAY_SIZE(rt9455_vmreg_values) - 1;
 ret = rt9455_set_field_val(info, F_VMREG,
       rt9455_vmreg_values,
       ARRAY_SIZE(rt9455_vmreg_values),
       rt9455_vmreg_values[idx]);
 if (ret) {
  dev_err(dev, "Failed to set VMREG value\n");
  return ret;
 }





 if (mivr == -1)
  mivr = 4500000;

 ret = rt9455_set_field_val(info, F_MIVR,
       rt9455_mivr_values,
       ARRAY_SIZE(rt9455_mivr_values), mivr);
 if (ret) {
  dev_err(dev, "Failed to set MIVR value\n");
  return ret;
 }





 if (iaicr == -1)
  iaicr = 500000;

 ret = rt9455_set_field_val(info, F_IAICR,
       rt9455_iaicr_values,
       ARRAY_SIZE(rt9455_iaicr_values), iaicr);
 if (ret) {
  dev_err(dev, "Failed to set IAICR value\n");
  return ret;
 }





 ret = regmap_field_write(info->regmap_fields[F_IAICR_INT], 0x01);
 if (ret) {
  dev_err(dev, "Failed to set IAICR_INT bit\n");
  return ret;
 }






 ret = regmap_field_write(info->regmap_fields[F_CHMIVRIM], 0x01);
 if (ret) {
  dev_err(dev, "Failed to mask CHMIVRI interrupt\n");
  return ret;
 }

 return 0;
}
