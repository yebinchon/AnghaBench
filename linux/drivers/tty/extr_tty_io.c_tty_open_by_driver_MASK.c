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
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int ERESTARTSYS ; 
 struct tty_struct* FUNC0 (struct tty_struct*) ; 
 struct tty_struct* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 struct tty_struct* FUNC6 (struct tty_struct*,struct file*,int) ; 
 struct tty_struct* FUNC7 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int FUNC9 (struct tty_struct*) ; 
 struct tty_struct* FUNC10 (int /*<<< orphan*/ ,struct file*,int*) ; 
 int /*<<< orphan*/  tty_mutex ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 

__attribute__((used)) static struct tty_struct *FUNC14(dev_t device, struct inode *inode,
					     struct file *filp)
{
	struct tty_struct *tty;
	struct tty_driver *driver = NULL;
	int index = -1;
	int retval;

	FUNC3(&tty_mutex);
	driver = FUNC10(device, filp, &index);
	if (FUNC2(driver)) {
		FUNC4(&tty_mutex);
		return FUNC0(driver);
	}

	/* check whether we're reopening an existing tty */
	tty = FUNC6(driver, filp, index);
	if (FUNC2(tty)) {
		FUNC4(&tty_mutex);
		goto out;
	}

	if (tty) {
		if (FUNC11(tty->port)) {
			FUNC8(tty);
			FUNC4(&tty_mutex);
			tty = FUNC1(-EBUSY);
			goto out;
		}
		FUNC4(&tty_mutex);
		retval = FUNC9(tty);
		FUNC8(tty);  /* drop kref from tty_driver_lookup_tty() */
		if (retval) {
			if (retval == -EINTR)
				retval = -ERESTARTSYS;
			tty = FUNC1(retval);
			goto out;
		}
		retval = FUNC12(tty);
		if (retval < 0) {
			FUNC13(tty);
			tty = FUNC1(retval);
		}
	} else { /* Returns with the tty_lock held for now */
		tty = FUNC7(driver, index);
		FUNC4(&tty_mutex);
	}
out:
	FUNC5(driver);
	return tty;
}