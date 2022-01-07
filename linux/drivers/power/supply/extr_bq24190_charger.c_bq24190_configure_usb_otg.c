
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int dev; int edev; } ;


 int BQ24190_REG_SS_VBUS_STAT_MASK ;
 int EXTCON_USB ;
 int dev_err (int ,char*,int,int) ;
 int extcon_set_state_sync (int ,int ,int) ;

__attribute__((used)) static int bq24190_configure_usb_otg(struct bq24190_dev_info *bdi, u8 ss_reg)
{
 bool otg_enabled;
 int ret;

 otg_enabled = !!(ss_reg & BQ24190_REG_SS_VBUS_STAT_MASK);
 ret = extcon_set_state_sync(bdi->edev, EXTCON_USB, otg_enabled);
 if (ret < 0)
  dev_err(bdi->dev, "Can't set extcon state to %d: %d\n",
   otg_enabled, ret);

 return ret;
}
