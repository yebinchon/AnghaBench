
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2781_device_info {int w1_dev; } ;


 int w1_ds2781_io (int ,char*,int,size_t,int) ;

__attribute__((used)) static inline int ds2781_battery_io(struct ds2781_device_info *dev_info,
 char *buf, int addr, size_t count, int io)
{
 return w1_ds2781_io(dev_info->w1_dev, buf, addr, count, io);
}
