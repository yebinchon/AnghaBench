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
typedef  scalar_t__ u32 ;
struct syscfg_reset_controller {struct syscfg_reset_channel* channels; scalar_t__ active_low; } ;
struct syscfg_reset_channel {scalar_t__ ack; int /*<<< orphan*/  reset; } ;
struct reset_controller_dev {unsigned long nr_resets; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (scalar_t__,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 struct syscfg_reset_controller* FUNC5 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC6(struct reset_controller_dev *rcdev,
				   unsigned long idx, int assert)
{
	struct syscfg_reset_controller *rst = FUNC5(rcdev);
	const struct syscfg_reset_channel *ch;
	u32 ctrl_val = rst->active_low ? !assert : !!assert;
	int err;

	if (idx >= rcdev->nr_resets)
		return -EINVAL;

	ch = &rst->channels[idx];

	err = FUNC3(ch->reset, ctrl_val);
	if (err)
		return err;

	if (ch->ack) {
		unsigned long timeout = jiffies + FUNC1(1000);
		u32 ack_val;

		while (true) {
			err = FUNC2(ch->ack, &ack_val);
			if (err)
				return err;

			if (ack_val == ctrl_val)
				break;

			if (FUNC4(jiffies, timeout))
				return -ETIME;

			FUNC0();
		}
	}

	return 0;
}