
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tps80031_regulator {int ext_ctrl_flag; TYPE_1__* rinfo; } ;
struct regulator_dev {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int state_reg; } ;


 int TPS80031_EXT_PWR_REQ ;
 int TPS80031_SLAVE_ID1 ;
 int TPS80031_STATE_MASK ;
 int TPS80031_STATE_ON ;
 int dev_err (int *,char*,int ,int) ;
 struct tps80031_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_tps80031_dev (struct regulator_dev*) ;
 int tps80031_read (struct device*,int ,int ,int*) ;

__attribute__((used)) static int tps80031_reg_is_enabled(struct regulator_dev *rdev)
{
 struct tps80031_regulator *ri = rdev_get_drvdata(rdev);
 struct device *parent = to_tps80031_dev(rdev);
 u8 reg_val;
 int ret;

 if (ri->ext_ctrl_flag & TPS80031_EXT_PWR_REQ)
  return 1;

 ret = tps80031_read(parent, TPS80031_SLAVE_ID1, ri->rinfo->state_reg,
    &reg_val);
 if (ret < 0) {
  dev_err(&rdev->dev, "Reg 0x%02x read failed, err = %d\n",
   ri->rinfo->state_reg, ret);
  return ret;
 }
 return (reg_val & TPS80031_STATE_MASK) == TPS80031_STATE_ON;
}
