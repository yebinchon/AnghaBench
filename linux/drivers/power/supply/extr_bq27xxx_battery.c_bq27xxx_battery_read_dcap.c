
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int opts; int dev; } ;


 int BQ27XXX_CURRENT_CONSTANT ;
 int BQ27XXX_O_ZERO ;
 int BQ27XXX_REG_DCAP ;
 int BQ27XXX_RS ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_read_dcap(struct bq27xxx_device_info *di)
{
 int dcap;

 if (di->opts & BQ27XXX_O_ZERO)
  dcap = bq27xxx_read(di, BQ27XXX_REG_DCAP, 1);
 else
  dcap = bq27xxx_read(di, BQ27XXX_REG_DCAP, 0);

 if (dcap < 0) {
  dev_dbg(di->dev, "error reading initial last measured discharge\n");
  return dcap;
 }

 if (di->opts & BQ27XXX_O_ZERO)
  dcap = (dcap << 8) * BQ27XXX_CURRENT_CONSTANT / BQ27XXX_RS;
 else
  dcap *= 1000;

 return dcap;
}
