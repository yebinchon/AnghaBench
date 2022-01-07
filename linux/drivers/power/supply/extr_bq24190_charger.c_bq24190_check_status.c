
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int f_reg; int ss_reg; int dev; scalar_t__ battery; scalar_t__ charger; int f_reg_lock; } ;


 int BQ24190_REG_F ;
 int BQ24190_REG_F_BAT_FAULT_MASK ;
 int BQ24190_REG_F_BOOST_FAULT_MASK ;
 int BQ24190_REG_F_CHRG_FAULT_MASK ;
 int BQ24190_REG_F_CHRG_FAULT_SHIFT ;
 int BQ24190_REG_F_NTC_FAULT_MASK ;
 int BQ24190_REG_ISC ;
 int BQ24190_REG_ISC_EN_HIZ_MASK ;
 int BQ24190_REG_ISC_EN_HIZ_SHIFT ;
 int BQ24190_REG_SS ;
 int BQ24190_REG_SS_CHRG_STAT_MASK ;
 int BQ24190_REG_SS_PG_STAT_MASK ;
 int bq24190_configure_usb_otg (struct bq24190_dev_info*,int) ;
 int bq24190_read (struct bq24190_dev_info*,int ,int*) ;
 int bq24190_write_mask (struct bq24190_dev_info*,int ,int ,int ,int ) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (scalar_t__) ;

__attribute__((used)) static void bq24190_check_status(struct bq24190_dev_info *bdi)
{
 const u8 battery_mask_ss = BQ24190_REG_SS_CHRG_STAT_MASK;
 const u8 battery_mask_f = BQ24190_REG_F_BAT_FAULT_MASK
    | BQ24190_REG_F_NTC_FAULT_MASK;
 bool alert_charger = 0, alert_battery = 0;
 u8 ss_reg = 0, f_reg = 0;
 int i, ret;

 ret = bq24190_read(bdi, BQ24190_REG_SS, &ss_reg);
 if (ret < 0) {
  dev_err(bdi->dev, "Can't read SS reg: %d\n", ret);
  return;
 }

 i = 0;
 do {
  ret = bq24190_read(bdi, BQ24190_REG_F, &f_reg);
  if (ret < 0) {
   dev_err(bdi->dev, "Can't read F reg: %d\n", ret);
   return;
  }
 } while (f_reg && ++i < 2);


 if (f_reg == (1 << BQ24190_REG_F_CHRG_FAULT_SHIFT) &&
     !(ss_reg & BQ24190_REG_SS_PG_STAT_MASK))
  f_reg = 0;

 if (f_reg != bdi->f_reg) {
  dev_warn(bdi->dev,
   "Fault: boost %d, charge %d, battery %d, ntc %d\n",
   !!(f_reg & BQ24190_REG_F_BOOST_FAULT_MASK),
   !!(f_reg & BQ24190_REG_F_CHRG_FAULT_MASK),
   !!(f_reg & BQ24190_REG_F_BAT_FAULT_MASK),
   !!(f_reg & BQ24190_REG_F_NTC_FAULT_MASK));

  mutex_lock(&bdi->f_reg_lock);
  if ((bdi->f_reg & battery_mask_f) != (f_reg & battery_mask_f))
   alert_battery = 1;
  if ((bdi->f_reg & ~battery_mask_f) != (f_reg & ~battery_mask_f))
   alert_charger = 1;
  bdi->f_reg = f_reg;
  mutex_unlock(&bdi->f_reg_lock);
 }

 if (ss_reg != bdi->ss_reg) {




  if ((bdi->ss_reg & BQ24190_REG_SS_PG_STAT_MASK) &&
    !(ss_reg & BQ24190_REG_SS_PG_STAT_MASK)) {
   ret = bq24190_write_mask(bdi, BQ24190_REG_ISC,
     BQ24190_REG_ISC_EN_HIZ_MASK,
     BQ24190_REG_ISC_EN_HIZ_SHIFT,
     0);
   if (ret < 0)
    dev_err(bdi->dev, "Can't access ISC reg: %d\n",
     ret);
  }

  if ((bdi->ss_reg & battery_mask_ss) != (ss_reg & battery_mask_ss))
   alert_battery = 1;
  if ((bdi->ss_reg & ~battery_mask_ss) != (ss_reg & ~battery_mask_ss))
   alert_charger = 1;
  bdi->ss_reg = ss_reg;
 }

 if (alert_charger || alert_battery) {
  power_supply_changed(bdi->charger);
  bq24190_configure_usb_otg(bdi, ss_reg);
 }
 if (alert_battery && bdi->battery)
  power_supply_changed(bdi->battery);

 dev_dbg(bdi->dev, "ss_reg: 0x%02x, f_reg: 0x%02x\n", ss_reg, f_reg);
}
