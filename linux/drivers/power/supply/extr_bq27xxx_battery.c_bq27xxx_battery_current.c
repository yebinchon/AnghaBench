
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq27xxx_device_info {int opts; int dev; } ;
typedef scalar_t__ s16 ;


 int BQ27000_FLAG_CHGS ;
 int BQ27XXX_CURRENT_CONSTANT ;
 int BQ27XXX_O_ZERO ;
 int BQ27XXX_REG_AI ;
 int BQ27XXX_REG_FLAGS ;
 int BQ27XXX_RS ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_current(struct bq27xxx_device_info *di,
       union power_supply_propval *val)
{
 int curr;
 int flags;

 curr = bq27xxx_read(di, BQ27XXX_REG_AI, 0);
 if (curr < 0) {
  dev_err(di->dev, "error reading current\n");
  return curr;
 }

 if (di->opts & BQ27XXX_O_ZERO) {
  flags = bq27xxx_read(di, BQ27XXX_REG_FLAGS, 1);
  if (flags & BQ27000_FLAG_CHGS) {
   dev_dbg(di->dev, "negative current!\n");
   curr = -curr;
  }

  val->intval = curr * BQ27XXX_CURRENT_CONSTANT / BQ27XXX_RS;
 } else {

  val->intval = (int)((s16)curr) * 1000;
 }

 return 0;
}
