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
struct tty_struct {int /*<<< orphan*/  atomic_write_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, int ndelay)
{
	if (!FUNC1(&tty->atomic_write_lock)) {
		if (ndelay)
			return -EAGAIN;
		if (FUNC0(&tty->atomic_write_lock))
			return -ERESTARTSYS;
	}
	return 0;
}