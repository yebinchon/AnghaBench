
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int opts; } ;


 int BQ27000_FLAG_CI ;
 int BQ27XXX_O_ZERO ;
 int BQ27XXX_REG_FLAGS ;
 int BQ27XXX_REG_NAC ;
 int ENODATA ;
 int bq27xxx_battery_read_charge (struct bq27xxx_device_info*,int ) ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;

__attribute__((used)) static inline int bq27xxx_battery_read_nac(struct bq27xxx_device_info *di)
{
 int flags;

 if (di->opts & BQ27XXX_O_ZERO) {
  flags = bq27xxx_read(di, BQ27XXX_REG_FLAGS, 1);
  if (flags >= 0 && (flags & BQ27000_FLAG_CI))
   return -ENODATA;
 }

 return bq27xxx_battery_read_charge(di, BQ27XXX_REG_NAC);
}
