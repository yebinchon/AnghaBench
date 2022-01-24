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
struct tty_struct {int /*<<< orphan*/  port; } ;
struct tty_driver {int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 struct tty_struct* FUNC0 (struct tty_struct*) ; 
 struct tty_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 struct tty_struct* FUNC6 (struct tty_struct*,int /*<<< orphan*/ *,int) ; 
 struct tty_struct* FUNC7 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 struct tty_struct* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  tty_mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

struct tty_struct *FUNC11(dev_t device)
{
	struct tty_struct *tty;
	struct tty_driver *driver = NULL;
	int index = -1;

	FUNC3(&tty_mutex);
	driver = FUNC9(device, NULL, &index);
	if (FUNC2(driver)) {
		FUNC4(&tty_mutex);
		return FUNC0(driver);
	}

	/* check whether we're reopening an existing tty */
	tty = FUNC6(driver, NULL, index);
	if (FUNC2(tty))
		goto out;

	if (tty) {
		/* drop kref from tty_driver_lookup_tty() */
		FUNC8(tty);
		tty = FUNC1(-EBUSY);
	} else { /* tty_init_dev returns tty with the tty_lock held */
		tty = FUNC7(driver, index);
		if (FUNC2(tty))
			goto out;
		FUNC10(tty->port, 1);
	}
out:
	FUNC4(&tty_mutex);
	FUNC5(driver);
	return tty;
}