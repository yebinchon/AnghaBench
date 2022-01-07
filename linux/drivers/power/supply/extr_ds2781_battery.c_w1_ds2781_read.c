
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2781_device_info {int dummy; } ;


 int ds2781_battery_io (struct ds2781_device_info*,char*,int,size_t,int ) ;

__attribute__((used)) static int w1_ds2781_read(struct ds2781_device_info *dev_info, char *buf,
  int addr, size_t count)
{
 return ds2781_battery_io(dev_info, buf, addr, count, 0);
}
