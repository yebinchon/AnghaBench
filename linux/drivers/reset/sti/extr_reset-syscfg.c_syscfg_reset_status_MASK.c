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
struct syscfg_reset_controller {scalar_t__ active_low; struct syscfg_reset_channel* channels; } ;
struct syscfg_reset_channel {scalar_t__ reset; scalar_t__ ack; } ;
struct reset_controller_dev {unsigned long nr_resets; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,scalar_t__*) ; 
 struct syscfg_reset_controller* FUNC1 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC2(struct reset_controller_dev *rcdev,
			       unsigned long idx)
{
	struct syscfg_reset_controller *rst = FUNC1(rcdev);
	const struct syscfg_reset_channel *ch;
	u32 ret_val = 0;
	int err;

	if (idx >= rcdev->nr_resets)
		return -EINVAL;

	ch = &rst->channels[idx];
	if (ch->ack)
		err = FUNC0(ch->ack, &ret_val);
	else
		err = FUNC0(ch->reset, &ret_val);
	if (err)
		return err;

	return rst->active_low ? !ret_val : !!ret_val;
}