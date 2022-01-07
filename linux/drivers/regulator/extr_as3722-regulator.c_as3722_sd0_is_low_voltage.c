
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_regulators {int dev; int as3722; } ;


 int AS3722_FUSE7_REG ;
 unsigned int AS3722_FUSE7_SD0_LOW_VOLTAGE ;
 int as3722_read (int ,int ,unsigned int*) ;
 int dev_err (int ,char*,int ,int) ;

__attribute__((used)) static bool as3722_sd0_is_low_voltage(struct as3722_regulators *as3722_regs)
{
 int err;
 unsigned val;

 err = as3722_read(as3722_regs->as3722, AS3722_FUSE7_REG, &val);
 if (err < 0) {
  dev_err(as3722_regs->dev, "Reg 0x%02x read failed: %d\n",
   AS3722_FUSE7_REG, err);
  return 0;
 }
 if (val & AS3722_FUSE7_SD0_LOW_VOLTAGE)
  return 1;
 return 0;
}
