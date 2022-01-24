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
struct ti_syscon_reset_data {unsigned long nr_controls; int /*<<< orphan*/  regmap; struct ti_syscon_reset_control* controls; } ;
struct ti_syscon_reset_control {int flags; int /*<<< orphan*/  assert_offset; int /*<<< orphan*/  assert_bit; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int ASSERT_NONE ; 
 int ASSERT_SET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct ti_syscon_reset_data* FUNC2 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
				  unsigned long id)
{
	struct ti_syscon_reset_data *data = FUNC2(rcdev);
	struct ti_syscon_reset_control *control;
	unsigned int mask, value;

	if (id >= data->nr_controls)
		return -EINVAL;

	control = &data->controls[id];

	if (control->flags & ASSERT_NONE)
		return -ENOTSUPP; /* assert not supported for this reset */

	mask = FUNC0(control->assert_bit);
	value = (control->flags & ASSERT_SET) ? mask : 0x0;

	return FUNC1(data->regmap, control->assert_offset, mask, value);
}