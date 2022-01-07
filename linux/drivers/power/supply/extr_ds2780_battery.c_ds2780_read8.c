
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dummy; } ;


 int ds2780_battery_io (struct ds2780_device_info*,int *,int,int,int ) ;

__attribute__((used)) static inline int ds2780_read8(struct ds2780_device_info *dev_info, u8 *val,
 int addr)
{
 return ds2780_battery_io(dev_info, val, addr, sizeof(u8), 0);
}
