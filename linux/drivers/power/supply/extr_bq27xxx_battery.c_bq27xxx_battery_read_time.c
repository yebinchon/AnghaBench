
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq27xxx_device_info {int dev; } ;


 int ENODATA ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_dbg (int ,char*,int ,int) ;

__attribute__((used)) static int bq27xxx_battery_read_time(struct bq27xxx_device_info *di, u8 reg)
{
 int tval;

 tval = bq27xxx_read(di, reg, 0);
 if (tval < 0) {
  dev_dbg(di->dev, "error reading time register %02x: %d\n",
   reg, tval);
  return tval;
 }

 if (tval == 65535)
  return -ENODATA;

 return tval * 60;
}
