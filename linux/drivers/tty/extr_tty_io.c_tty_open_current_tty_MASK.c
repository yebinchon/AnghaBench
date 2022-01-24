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
struct tty_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_flags; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ENXIO ; 
 struct tty_struct* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  TTYAUX_MAJOR ; 
 struct tty_struct* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static struct tty_struct *FUNC7(dev_t device, struct file *filp)
{
	struct tty_struct *tty;
	int retval;

	if (device != FUNC1(TTYAUX_MAJOR, 0))
		return NULL;

	tty = FUNC2();
	if (!tty)
		return FUNC0(-ENXIO);

	filp->f_flags |= O_NONBLOCK; /* Don't let /dev/tty block */
	/* noctty = 1; */
	FUNC4(tty);
	FUNC3(tty);	/* safe to drop the kref now */

	retval = FUNC5(tty);
	if (retval < 0) {
		FUNC6(tty);
		tty = FUNC0(retval);
	}
	return tty;
}