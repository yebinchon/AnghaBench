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
struct tty_struct {int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct slgt_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 unsigned short BIT6 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  TCR ; 
 unsigned short FUNC1 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, int break_state)
{
	struct slgt_info *info = tty->driver_data;
	unsigned short value;
	unsigned long flags;

	if (FUNC2(info, tty->name, "set_break"))
		return -EINVAL;
	FUNC0(("%s set_break(%d)\n", info->device_name, break_state));

	FUNC3(&info->lock,flags);
	value = FUNC1(info, TCR);
 	if (break_state == -1)
		value |= BIT6;
	else
		value &= ~BIT6;
	FUNC5(info, TCR, value);
	FUNC4(&info->lock,flags);
	return 0;
}