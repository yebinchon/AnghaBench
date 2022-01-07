
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int dummy; } ;


 int BQ27XXX_REG_FCC ;
 int bq27xxx_battery_read_charge (struct bq27xxx_device_info*,int ) ;

__attribute__((used)) static inline int bq27xxx_battery_read_fcc(struct bq27xxx_device_info *di)
{
 return bq27xxx_battery_read_charge(di, BQ27XXX_REG_FCC);
}
