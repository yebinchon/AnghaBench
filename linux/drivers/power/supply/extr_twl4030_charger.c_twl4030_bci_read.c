
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL_MODULE_MAIN_CHARGE ;
 int twl_i2c_read_u8 (int ,int *,int ) ;

__attribute__((used)) static int twl4030_bci_read(u8 reg, u8 *val)
{
 return twl_i2c_read_u8(TWL_MODULE_MAIN_CHARGE, val, reg);
}
