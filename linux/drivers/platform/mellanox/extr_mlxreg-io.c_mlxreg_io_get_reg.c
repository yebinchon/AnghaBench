
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxreg_core_data {int mask; scalar_t__ bit; int reg; } ;


 int regmap_read (void*,int ,int*) ;
 int rol32 (int,scalar_t__) ;
 int ror32 (int,scalar_t__) ;

__attribute__((used)) static int
mlxreg_io_get_reg(void *regmap, struct mlxreg_core_data *data, u32 in_val,
    bool rw_flag, u32 *regval)
{
 int ret;

 ret = regmap_read(regmap, data->reg, regval);
 if (ret)
  goto access_error;
 if (!data->bit) {

  if (rw_flag) {

   *regval = !!(*regval & ~data->mask);
  } else {

   *regval &= data->mask;
   if (in_val)
    *regval |= ~data->mask;
  }
 } else if (data->mask) {

  if (rw_flag) {

   *regval = ror32(*regval & data->mask, (data->bit - 1));
  } else {

   in_val = rol32(in_val, data->bit - 1) & data->mask;

   *regval = (*regval & ~data->mask) | in_val;
  }
 }

access_error:
 return ret;
}
