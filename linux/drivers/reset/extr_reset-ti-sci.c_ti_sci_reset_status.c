
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ti_sci_reset_data {int idr; struct ti_sci_handle* sci; } ;
struct ti_sci_reset_control {int reset_mask; int dev_id; } ;
struct ti_sci_dev_ops {int (* get_device_resets ) (struct ti_sci_handle const*,int ,int*) ;} ;
struct TYPE_2__ {struct ti_sci_dev_ops dev_ops; } ;
struct ti_sci_handle {TYPE_1__ ops; } ;
struct reset_controller_dev {int dummy; } ;


 int EINVAL ;
 struct ti_sci_reset_control* idr_find (int *,unsigned long) ;
 int stub1 (struct ti_sci_handle const*,int ,int*) ;
 struct ti_sci_reset_data* to_ti_sci_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int ti_sci_reset_status(struct reset_controller_dev *rcdev,
          unsigned long id)
{
 struct ti_sci_reset_data *data = to_ti_sci_reset_data(rcdev);
 const struct ti_sci_handle *sci = data->sci;
 const struct ti_sci_dev_ops *dev_ops = &sci->ops.dev_ops;
 struct ti_sci_reset_control *control;
 u32 reset_state;
 int ret;

 control = idr_find(&data->idr, id);
 if (!control)
  return -EINVAL;

 ret = dev_ops->get_device_resets(sci, control->dev_id, &reset_state);
 if (ret)
  return ret;

 return reset_state & control->reset_mask;
}
