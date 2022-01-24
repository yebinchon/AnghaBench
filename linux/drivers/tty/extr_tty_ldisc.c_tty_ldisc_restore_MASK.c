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
struct tty_struct {int dummy; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_NULL ; 
 int /*<<< orphan*/  N_TTY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, struct tty_ldisc *old)
{
	/* There is an outstanding reference here so this is safe */
	if (FUNC2(tty, old->ops->num) < 0) {
		const char *name = FUNC3(tty);

		FUNC1("Falling back ldisc for %s.\n", name);
		/* The traditional behaviour is to fall back to N_TTY, we
		   want to avoid falling back to N_NULL unless we have no
		   choice to avoid the risk of breaking anything */
		if (FUNC2(tty, N_TTY) < 0 &&
		    FUNC2(tty, N_NULL) < 0)
			FUNC0("Couldn't open N_NULL ldisc for %s.", name);
	}
}