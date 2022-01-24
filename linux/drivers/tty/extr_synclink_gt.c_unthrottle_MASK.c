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
struct slgt_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  signals; scalar_t__ x_char; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 scalar_t__ FUNC4 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct tty_struct * tty)
{
	struct slgt_info *info = tty->driver_data;
	unsigned long flags;

	if (FUNC4(info, tty->name, "unthrottle"))
		return;
	FUNC1(("%s unthrottle\n", info->device_name));
	if (FUNC2(tty)) {
		if (info->x_char)
			info->x_char = 0;
		else
			FUNC5(tty, FUNC3(tty));
	}
 	if (FUNC0(tty)) {
		FUNC7(&info->lock,flags);
		info->signals |= SerialSignal_RTS;
	 	FUNC6(info);
		FUNC8(&info->lock,flags);
	}
}