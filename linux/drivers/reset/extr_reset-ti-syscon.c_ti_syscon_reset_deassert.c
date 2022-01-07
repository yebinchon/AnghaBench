
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_syscon_reset_data {unsigned long nr_controls; int regmap; struct ti_syscon_reset_control* controls; } ;
struct ti_syscon_reset_control {int flags; int deassert_offset; int deassert_bit; } ;
struct reset_controller_dev {int dummy; } ;


 unsigned int BIT (int ) ;
 int DEASSERT_NONE ;
 int DEASSERT_SET ;
 int EINVAL ;
 int ENOTSUPP ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct ti_syscon_reset_data* to_ti_syscon_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int ti_syscon_reset_deassert(struct reset_controller_dev *rcdev,
        unsigned long id)
{
 struct ti_syscon_reset_data *data = to_ti_syscon_reset_data(rcdev);
 struct ti_syscon_reset_control *control;
 unsigned int mask, value;

 if (id >= data->nr_controls)
  return -EINVAL;

 control = &data->controls[id];

 if (control->flags & DEASSERT_NONE)
  return -ENOTSUPP;

 mask = BIT(control->deassert_bit);
 value = (control->flags & DEASSERT_SET) ? mask : 0x0;

 return regmap_update_bits(data->regmap, control->deassert_offset, mask, value);
}
