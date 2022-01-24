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
struct tty_struct {struct hvc_struct* driver_data; int /*<<< orphan*/  index; } ;
struct tty_driver {int dummy; } ;
struct hvc_struct {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ENODEV ; 
 struct hvc_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct tty_driver*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tty_driver *driver, struct tty_struct *tty)
{
	struct hvc_struct *hp;
	int rc;

	/* Auto increments kref reference if found. */
	hp = FUNC0(tty->index);
	if (!hp)
		return -ENODEV;

	tty->driver_data = hp;

	rc = FUNC1(&hp->port, driver, tty);
	if (rc)
		FUNC2(&hp->port);
	return rc;
}