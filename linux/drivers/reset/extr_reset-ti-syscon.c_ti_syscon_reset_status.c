
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_syscon_reset_data {unsigned long nr_controls; int regmap; struct ti_syscon_reset_control* controls; } ;
struct ti_syscon_reset_control {int flags; int status_bit; int status_offset; } ;
struct reset_controller_dev {int dummy; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int ENOTSUPP ;
 int STATUS_NONE ;
 int STATUS_SET ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ti_syscon_reset_data* to_ti_syscon_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int ti_syscon_reset_status(struct reset_controller_dev *rcdev,
      unsigned long id)
{
 struct ti_syscon_reset_data *data = to_ti_syscon_reset_data(rcdev);
 struct ti_syscon_reset_control *control;
 unsigned int reset_state;
 int ret;

 if (id >= data->nr_controls)
  return -EINVAL;

 control = &data->controls[id];

 if (control->flags & STATUS_NONE)
  return -ENOTSUPP;

 ret = regmap_read(data->regmap, control->status_offset, &reset_state);
 if (ret)
  return ret;

 return !(reset_state & BIT(control->status_bit)) ==
  !(control->flags & STATUS_SET);
}
