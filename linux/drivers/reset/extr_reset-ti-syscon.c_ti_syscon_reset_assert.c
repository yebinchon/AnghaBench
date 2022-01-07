
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_syscon_reset_data {unsigned long nr_controls; int regmap; struct ti_syscon_reset_control* controls; } ;
struct ti_syscon_reset_control {int flags; int assert_offset; int assert_bit; } ;
struct reset_controller_dev {int dummy; } ;


 int ASSERT_NONE ;
 int ASSERT_SET ;
 unsigned int BIT (int ) ;
 int EINVAL ;
 int ENOTSUPP ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct ti_syscon_reset_data* to_ti_syscon_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int ti_syscon_reset_assert(struct reset_controller_dev *rcdev,
      unsigned long id)
{
 struct ti_syscon_reset_data *data = to_ti_syscon_reset_data(rcdev);
 struct ti_syscon_reset_control *control;
 unsigned int mask, value;

 if (id >= data->nr_controls)
  return -EINVAL;

 control = &data->controls[id];

 if (control->flags & ASSERT_NONE)
  return -ENOTSUPP;

 mask = BIT(control->assert_bit);
 value = (control->flags & ASSERT_SET) ? mask : 0x0;

 return regmap_update_bits(data->regmap, control->assert_offset, mask, value);
}
