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
struct tty_struct {int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tty; scalar_t__ count; } ;
struct slgt_info {TYPE_1__ port; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct tty_struct *tty)
{
	struct slgt_info *info = tty->driver_data;
	unsigned long flags;

	if (FUNC4(info, tty->name, "hangup"))
		return;
	FUNC0(("%s hangup\n", info->device_name));

	FUNC1(tty);

	FUNC2(&info->port.mutex);
	FUNC5(info);

	FUNC6(&info->port.lock, flags);
	info->port.count = 0;
	info->port.tty = NULL;
	FUNC7(&info->port.lock, flags);
	FUNC8(&info->port, 0);
	FUNC3(&info->port.mutex);

	FUNC9(&info->port.open_wait);
}