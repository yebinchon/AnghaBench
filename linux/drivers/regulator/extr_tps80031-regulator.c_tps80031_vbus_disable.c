
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tps80031_regulator {int config_flags; int dev; TYPE_2__* rinfo; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int enable_time; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int BOOST_HW_PWR_EN ;
 int DIV_ROUND_UP (int ,int) ;
 int OPA_MODE_EN ;
 int TPS80031_CHARGERUSB_CTRL1 ;
 int TPS80031_CHARGERUSB_CTRL3 ;
 int TPS80031_SLAVE_ID2 ;
 int TPS80031_VBUS_DISCHRG_EN_PDN ;
 int USB_VBUS_CTRL_CLR ;
 int USB_VBUS_CTRL_SET ;
 int VBUS_DISCHRG ;
 int dev_err (int ,char*,int ,int) ;
 int mdelay (int ) ;
 struct tps80031_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_tps80031_dev (struct regulator_dev*) ;
 int tps80031_clr_bits (struct device*,int ,int ,int ) ;
 int tps80031_write (struct device*,int ,int ,int ) ;

__attribute__((used)) static int tps80031_vbus_disable(struct regulator_dev *rdev)
{
 struct tps80031_regulator *ri = rdev_get_drvdata(rdev);
 struct device *parent = to_tps80031_dev(rdev);
 int ret = 0;

 if (ri->config_flags & TPS80031_VBUS_DISCHRG_EN_PDN) {
  ret = tps80031_write(parent, TPS80031_SLAVE_ID2,
   USB_VBUS_CTRL_SET, VBUS_DISCHRG);
  if (ret < 0) {
   dev_err(ri->dev, "reg 0x%02x write failed, e = %d\n",
    USB_VBUS_CTRL_SET, ret);
   return ret;
  }
 }

 ret = tps80031_clr_bits(parent, TPS80031_SLAVE_ID2,
   TPS80031_CHARGERUSB_CTRL1, OPA_MODE_EN);
 if (ret < 0) {
  dev_err(ri->dev, "reg 0x%02x clearbit failed, e = %d\n",
    TPS80031_CHARGERUSB_CTRL1, ret);
  return ret;
 }

 ret = tps80031_clr_bits(parent, TPS80031_SLAVE_ID2,
    TPS80031_CHARGERUSB_CTRL3, BOOST_HW_PWR_EN);
 if (ret < 0) {
  dev_err(ri->dev, "reg 0x%02x clearbit failed, e = %d\n",
    TPS80031_CHARGERUSB_CTRL3, ret);
  return ret;
 }

 mdelay(DIV_ROUND_UP(ri->rinfo->desc.enable_time, 1000));
 if (ri->config_flags & TPS80031_VBUS_DISCHRG_EN_PDN) {
  ret = tps80031_write(parent, TPS80031_SLAVE_ID2,
   USB_VBUS_CTRL_CLR, VBUS_DISCHRG);
  if (ret < 0) {
   dev_err(ri->dev, "reg 0x%02x write failed, e = %d\n",
     USB_VBUS_CTRL_CLR, ret);
   return ret;
  }
 }
 return ret;
}
