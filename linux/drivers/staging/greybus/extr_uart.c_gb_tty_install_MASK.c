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
struct tty_struct {struct gb_tty* driver_data; int /*<<< orphan*/  index; } ;
struct tty_driver {int dummy; } ;
struct gb_tty {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ENODEV ; 
 struct gb_tty* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tty_driver*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC3(struct tty_driver *driver, struct tty_struct *tty)
{
	struct gb_tty *gb_tty;
	int retval;

	gb_tty = FUNC0(tty->index);
	if (!gb_tty)
		return -ENODEV;

	retval = FUNC2(driver, tty);
	if (retval)
		goto error;

	tty->driver_data = gb_tty;
	return 0;
error:
	FUNC1(&gb_tty->port);
	return retval;
}