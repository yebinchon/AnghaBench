
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dummy; } ;


 int ds2780_battery_io (struct ds2780_device_info*,int *,int,size_t,int ) ;

__attribute__((used)) static inline int ds2780_read_block(struct ds2780_device_info *dev_info,
 u8 *val, int addr, size_t count)
{
 return ds2780_battery_io(dev_info, val, addr, count, 0);
}
