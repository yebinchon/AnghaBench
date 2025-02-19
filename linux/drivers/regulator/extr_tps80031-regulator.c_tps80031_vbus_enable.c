
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps80031_regulator {int dev; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 int BOOST_HW_PWR_EN ;
 int OPA_MODE_EN ;
 int TPS80031_CHARGERUSB_CTRL1 ;
 int TPS80031_CHARGERUSB_CTRL3 ;
 int TPS80031_SLAVE_ID2 ;
 int dev_err (int ,char*,int ,int) ;
 struct tps80031_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_tps80031_dev (struct regulator_dev*) ;
 int tps80031_set_bits (struct device*,int ,int ,int ) ;

__attribute__((used)) static int tps80031_vbus_enable(struct regulator_dev *rdev)
{
 struct tps80031_regulator *ri = rdev_get_drvdata(rdev);
 struct device *parent = to_tps80031_dev(rdev);
 int ret;

 ret = tps80031_set_bits(parent, TPS80031_SLAVE_ID2,
    TPS80031_CHARGERUSB_CTRL1, OPA_MODE_EN);
 if (ret < 0) {
  dev_err(ri->dev, "reg 0x%02x read failed, e = %d\n",
     TPS80031_CHARGERUSB_CTRL1, ret);
  return ret;
 }

 ret = tps80031_set_bits(parent, TPS80031_SLAVE_ID2,
    TPS80031_CHARGERUSB_CTRL3, BOOST_HW_PWR_EN);
 if (ret < 0) {
  dev_err(ri->dev, "reg 0x%02x read failed, e = %d\n",
   TPS80031_CHARGERUSB_CTRL3, ret);
  return ret;
 }
 return ret;
}
