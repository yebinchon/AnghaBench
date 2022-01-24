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
struct tty_struct {size_t index; struct gdm* driver_data; TYPE_1__* driver; } ;
struct tty_driver {int dummy; } ;
struct gdm {int /*<<< orphan*/  port; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_STRING ; 
 int ENODEV ; 
 int /*<<< orphan*/  TTY_MAX_COUNT ; 
 struct gdm*** gdm_table ; 
 int /*<<< orphan*/  gdm_table_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tty_driver*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC6(struct tty_driver *driver, struct tty_struct *tty)
{
	struct gdm *gdm = NULL;
	int ret;

	ret = FUNC0(DRIVER_STRING, TTY_MAX_COUNT,
			   tty->driver->driver_name);
	if (ret < 0)
		return -ENODEV;

	FUNC1(&gdm_table_lock);
	gdm = gdm_table[ret][tty->index];
	if (!gdm) {
		FUNC2(&gdm_table_lock);
		return -ENODEV;
	}

	FUNC3(&gdm->port);

	ret = FUNC5(driver, tty);
	if (ret) {
		FUNC4(&gdm->port);
		FUNC2(&gdm_table_lock);
		return ret;
	}

	tty->driver_data = gdm;
	FUNC2(&gdm_table_lock);

	return 0;
}