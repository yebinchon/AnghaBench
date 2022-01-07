
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_battery_info {int charge_full_design_uah; int energy_full_design_uwh; int voltage_min_design_uv; } ;
struct bq27xxx_dm_buf {scalar_t__ class; scalar_t__ block; scalar_t__ dirty; } ;
struct bq27xxx_device_info {int opts; } ;


 struct bq27xxx_dm_buf BQ27XXX_DM_BUF (struct bq27xxx_device_info*,int ) ;
 int BQ27XXX_DM_DESIGN_CAPACITY ;
 int BQ27XXX_DM_DESIGN_ENERGY ;
 int BQ27XXX_DM_TERMINATE_VOLTAGE ;
 int BQ27XXX_MSLEEP (int) ;
 int BQ27XXX_O_CFGUP ;
 int BQ27XXX_REG_CTRL ;
 int BQ27XXX_RESET ;
 int EINVAL ;
 int bq27xxx_battery_read_dm_block (struct bq27xxx_device_info*,struct bq27xxx_dm_buf*) ;
 int bq27xxx_battery_seal (struct bq27xxx_device_info*) ;
 scalar_t__ bq27xxx_battery_unseal (struct bq27xxx_device_info*) ;
 int bq27xxx_battery_update_dm_block (struct bq27xxx_device_info*,struct bq27xxx_dm_buf*,int ,int) ;
 int bq27xxx_battery_write_dm_block (struct bq27xxx_device_info*,struct bq27xxx_dm_buf*) ;
 int bq27xxx_write (struct bq27xxx_device_info*,int ,int ,int) ;

__attribute__((used)) static void bq27xxx_battery_set_config(struct bq27xxx_device_info *di,
           struct power_supply_battery_info *info)
{
 struct bq27xxx_dm_buf bd = BQ27XXX_DM_BUF(di, BQ27XXX_DM_DESIGN_CAPACITY);
 struct bq27xxx_dm_buf bt = BQ27XXX_DM_BUF(di, BQ27XXX_DM_TERMINATE_VOLTAGE);
 bool updated;

 if (bq27xxx_battery_unseal(di) < 0)
  return;

 if (info->charge_full_design_uah != -EINVAL &&
     info->energy_full_design_uwh != -EINVAL) {
  bq27xxx_battery_read_dm_block(di, &bd);

  bq27xxx_battery_update_dm_block(di, &bd,
     BQ27XXX_DM_DESIGN_CAPACITY,
     info->charge_full_design_uah / 1000);
  bq27xxx_battery_update_dm_block(di, &bd,
     BQ27XXX_DM_DESIGN_ENERGY,
     info->energy_full_design_uwh / 1000);
 }

 if (info->voltage_min_design_uv != -EINVAL) {
  bool same = bd.class == bt.class && bd.block == bt.block;
  if (!same)
   bq27xxx_battery_read_dm_block(di, &bt);
  bq27xxx_battery_update_dm_block(di, same ? &bd : &bt,
     BQ27XXX_DM_TERMINATE_VOLTAGE,
     info->voltage_min_design_uv / 1000);
 }

 updated = bd.dirty || bt.dirty;

 bq27xxx_battery_write_dm_block(di, &bd);
 bq27xxx_battery_write_dm_block(di, &bt);

 bq27xxx_battery_seal(di);

 if (updated && !(di->opts & BQ27XXX_O_CFGUP)) {
  bq27xxx_write(di, BQ27XXX_REG_CTRL, BQ27XXX_RESET, 0);
  BQ27XXX_MSLEEP(300);
 }

}
