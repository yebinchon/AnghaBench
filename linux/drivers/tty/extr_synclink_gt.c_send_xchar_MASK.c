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
struct slgt_info {char x_char; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_enabled; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, char ch)
{
	struct slgt_info *info = tty->driver_data;
	unsigned long flags;

	if (FUNC1(info, tty->name, "send_xchar"))
		return;
	FUNC0(("%s send_xchar(%d)\n", info->device_name, ch));
	info->x_char = ch;
	if (ch) {
		FUNC2(&info->lock,flags);
		if (!info->tx_enabled)
		 	FUNC4(info);
		FUNC3(&info->lock,flags);
	}
}