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
struct tty_struct {scalar_t__ link; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SIGINT ; 
 int SIGQUIT ; 
 int SIGTSTP ; 
 int /*<<< orphan*/  FUNC0 (struct pid*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pid*) ; 
 struct pid* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, int sig)
{
	struct pid *pgrp;

	if (sig != SIGINT && sig != SIGQUIT && sig != SIGTSTP)
		return -EINVAL;

	if (tty->link) {
		pgrp = FUNC2(tty->link);
		if (pgrp)
			FUNC0(pgrp, sig, 1);
		FUNC1(pgrp);
	}
	return 0;
}