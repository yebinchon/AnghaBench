
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL6030_SMPS_MULT ;
 int TWL_MODULE_PM_RECEIVER ;
 int twl_i2c_read_u8 (int ,int *,int ) ;

__attribute__((used)) static u8 twl_get_smps_mult(void)
{
 u8 value;

 twl_i2c_read_u8(TWL_MODULE_PM_RECEIVER, &value,
   TWL6030_SMPS_MULT);
 return value;
}
