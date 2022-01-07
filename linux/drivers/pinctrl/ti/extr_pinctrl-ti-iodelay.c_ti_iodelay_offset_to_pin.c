
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_iodelay_reg_data {unsigned int reg_start_offset; unsigned int reg_nr_per_pin; TYPE_1__* regmap_config; } ;
struct ti_iodelay_device {int dev; struct ti_iodelay_reg_data* reg_data; } ;
struct TYPE_2__ {unsigned int max_register; unsigned int reg_stride; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int ti_iodelay_offset_to_pin(struct ti_iodelay_device *iod,
        unsigned int offset)
{
 const struct ti_iodelay_reg_data *r = iod->reg_data;
 unsigned int index;

 if (offset > r->regmap_config->max_register) {
  dev_err(iod->dev, "mux offset out of range: 0x%x (0x%x)\n",
   offset, r->regmap_config->max_register);
  return -EINVAL;
 }

 index = (offset - r->reg_start_offset) / r->regmap_config->reg_stride;
 index /= r->reg_nr_per_pin;

 return index;
}
