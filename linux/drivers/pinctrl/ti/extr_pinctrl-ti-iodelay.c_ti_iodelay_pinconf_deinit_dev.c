
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_iodelay_reg_data {int global_lock_val; int global_lock_mask; int reg_global_lock_offset; } ;
struct ti_iodelay_device {int regmap; struct ti_iodelay_reg_data* reg_data; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ti_iodelay_pinconf_deinit_dev(struct ti_iodelay_device *iod)
{
 const struct ti_iodelay_reg_data *reg = iod->reg_data;


 regmap_update_bits(iod->regmap, reg->reg_global_lock_offset,
      reg->global_lock_mask, reg->global_lock_val);
}
