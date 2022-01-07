
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct regulator_dev {int dummy; } ;
struct as3722_regulators {int dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;
struct TYPE_2__ {size_t mode_mask; int control_reg; } ;


 int EINVAL ;
 int ERANGE ;


 TYPE_1__* as3722_reg_lookup ;
 int as3722_update_bits (struct as3722*,int ,size_t,size_t) ;
 int dev_err (int ,char*,int ,int) ;
 struct as3722_regulators* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int as3722_sd_set_mode(struct regulator_dev *rdev,
  unsigned int mode)
{
 struct as3722_regulators *as3722_regs = rdev_get_drvdata(rdev);
 struct as3722 *as3722 = as3722_regs->as3722;
 u8 id = rdev_get_id(rdev);
 u8 val = 0;
 int ret;

 if (!as3722_reg_lookup[id].control_reg)
  return -ERANGE;

 switch (mode) {
 case 129:
  val = as3722_reg_lookup[id].mode_mask;
 case 128:
  break;
 default:
  return -EINVAL;
 }

 ret = as3722_update_bits(as3722, as3722_reg_lookup[id].control_reg,
   as3722_reg_lookup[id].mode_mask, val);
 if (ret < 0) {
  dev_err(as3722_regs->dev, "Reg 0x%02x update failed: %d\n",
   as3722_reg_lookup[id].control_reg, ret);
  return ret;
 }
 return ret;
}
