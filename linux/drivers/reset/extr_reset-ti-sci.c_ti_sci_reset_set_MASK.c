#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ti_sci_reset_data {int /*<<< orphan*/  idr; struct ti_sci_handle* sci; } ;
struct ti_sci_reset_control {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  reset_mask; } ;
struct ti_sci_dev_ops {int (* get_device_resets ) (struct ti_sci_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int (* set_device_resets ) (struct ti_sci_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {struct ti_sci_dev_ops dev_ops; } ;
struct ti_sci_handle {TYPE_1__ ops; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ti_sci_reset_control* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ti_sci_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ti_sci_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_sci_reset_data* FUNC5 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC6(struct reset_controller_dev *rcdev,
			    unsigned long id, bool assert)
{
	struct ti_sci_reset_data *data = FUNC5(rcdev);
	const struct ti_sci_handle *sci = data->sci;
	const struct ti_sci_dev_ops *dev_ops = &sci->ops.dev_ops;
	struct ti_sci_reset_control *control;
	u32 reset_state;
	int ret;

	control = FUNC0(&data->idr, id);
	if (!control)
		return -EINVAL;

	FUNC1(&control->lock);

	ret = dev_ops->get_device_resets(sci, control->dev_id, &reset_state);
	if (ret)
		goto out;

	if (assert)
		reset_state |= control->reset_mask;
	else
		reset_state &= ~control->reset_mask;

	ret = dev_ops->set_device_resets(sci, control->dev_id, reset_state);
out:
	FUNC2(&control->lock);

	return ret;
}