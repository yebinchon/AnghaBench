
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_reset_data {int idr; int dev; } ;
struct ti_sci_reset_control {int lock; int reset_mask; int dev_id; } ;
struct reset_controller_dev {scalar_t__ of_reset_n_cells; } ;
struct of_phandle_args {scalar_t__ args_count; int * args; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct ti_sci_reset_control* devm_kzalloc (int ,int,int ) ;
 int idr_alloc (int *,struct ti_sci_reset_control*,int ,int ,int ) ;
 int mutex_init (int *) ;
 struct ti_sci_reset_data* to_ti_sci_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int ti_sci_reset_of_xlate(struct reset_controller_dev *rcdev,
     const struct of_phandle_args *reset_spec)
{
 struct ti_sci_reset_data *data = to_ti_sci_reset_data(rcdev);
 struct ti_sci_reset_control *control;

 if (WARN_ON(reset_spec->args_count != rcdev->of_reset_n_cells))
  return -EINVAL;

 control = devm_kzalloc(data->dev, sizeof(*control), GFP_KERNEL);
 if (!control)
  return -ENOMEM;

 control->dev_id = reset_spec->args[0];
 control->reset_mask = reset_spec->args[1];
 mutex_init(&control->lock);

 return idr_alloc(&data->idr, control, 0, 0, GFP_KERNEL);
}
