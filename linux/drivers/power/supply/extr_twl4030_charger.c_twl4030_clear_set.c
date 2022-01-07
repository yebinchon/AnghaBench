
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int twl_i2c_read_u8 (int ,int *,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_clear_set(u8 mod_no, u8 clear, u8 set, u8 reg)
{
 u8 val = 0;
 int ret;

 ret = twl_i2c_read_u8(mod_no, &val, reg);
 if (ret)
  return ret;

 val &= ~clear;
 val |= set;

 return twl_i2c_write_u8(mod_no, val, reg);
}
