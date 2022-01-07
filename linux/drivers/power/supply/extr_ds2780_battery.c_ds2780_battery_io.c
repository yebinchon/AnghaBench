
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2780_device_info {int w1_dev; } ;


 int w1_ds2780_io (int ,char*,int,size_t,int) ;

__attribute__((used)) static inline int ds2780_battery_io(struct ds2780_device_info *dev_info,
 char *buf, int addr, size_t count, int io)
{
 return w1_ds2780_io(dev_info->w1_dev, buf, addr, count, io);
}
