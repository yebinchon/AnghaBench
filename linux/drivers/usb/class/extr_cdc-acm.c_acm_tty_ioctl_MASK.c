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
struct tty_struct {struct acm* driver_data; } ;
struct acm {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int EIO ; 
 int ENOIOCTLCMD ; 
#define  TIOCMIWAIT 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct acm*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty,
					unsigned int cmd, unsigned long arg)
{
	struct acm *acm = tty->driver_data;
	int rv = -ENOIOCTLCMD;

	switch (cmd) {
	case TIOCMIWAIT:
		rv = FUNC0(acm->control);
		if (rv < 0) {
			rv = -EIO;
			break;
		}
		rv = FUNC2(acm, arg);
		FUNC1(acm->control);
		break;
	}

	return rv;
}