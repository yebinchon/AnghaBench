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
struct tty_struct {int /*<<< orphan*/ * disc_data; } ;

/* Variables and functions */
 int EEXIST ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * this_tty ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/ * FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  writelock ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	int retval = -EEXIST;

	FUNC0(&writelock);
	if (this_tty == NULL) {
		this_tty = FUNC3(tty);
		if (this_tty == NULL) {
			retval = -EFAULT;
		} else {
			tty->disc_data = this_tty;
			FUNC2(tty);
			retval = 0;
		}
	}
	FUNC1(&writelock);

	return retval;
}