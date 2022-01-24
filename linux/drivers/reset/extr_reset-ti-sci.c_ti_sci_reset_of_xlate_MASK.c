#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ti_sci_reset_data {int /*<<< orphan*/  idr; int /*<<< orphan*/  dev; } ;
struct ti_sci_reset_control {int /*<<< orphan*/  lock; int /*<<< orphan*/  reset_mask; int /*<<< orphan*/  dev_id; } ;
struct reset_controller_dev {scalar_t__ of_reset_n_cells; } ;
struct of_phandle_args {scalar_t__ args_count; int /*<<< orphan*/ * args; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 struct ti_sci_reset_control* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ti_sci_reset_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ti_sci_reset_data* FUNC4 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
				 const struct of_phandle_args *reset_spec)
{
	struct ti_sci_reset_data *data = FUNC4(rcdev);
	struct ti_sci_reset_control *control;

	if (FUNC0(reset_spec->args_count != rcdev->of_reset_n_cells))
		return -EINVAL;

	control = FUNC1(data->dev, sizeof(*control), GFP_KERNEL);
	if (!control)
		return -ENOMEM;

	control->dev_id = reset_spec->args[0];
	control->reset_mask = reset_spec->args[1];
	FUNC3(&control->lock);

	return FUNC2(&data->idr, control, 0, 0, GFP_KERNEL);
}