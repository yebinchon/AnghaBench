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
struct tty_struct {scalar_t__ count; TYPE_1__* ops; int /*<<< orphan*/  atomic_write_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (struct tty_struct*,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

void FUNC6(struct tty_struct *tty, char *msg)
{
	if (tty) {
		FUNC0(&tty->atomic_write_lock);
		FUNC3(tty);
		if (tty->ops->write && tty->count > 0)
			tty->ops->write(tty, msg, FUNC1(msg));
		FUNC4(tty);
		FUNC5(tty);
	}
	return;
}