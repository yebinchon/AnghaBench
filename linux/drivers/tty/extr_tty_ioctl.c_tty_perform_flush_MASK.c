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
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tty_struct*,unsigned long) ; 
 int FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC3 (struct tty_struct*) ; 

int FUNC4(struct tty_struct *tty, unsigned long arg)
{
	struct tty_ldisc *ld;
	int retval = FUNC1(tty);
	if (retval)
		return retval;

	ld = FUNC3(tty);
	retval = FUNC0(tty, arg);
	if (ld)
		FUNC2(ld);
	return retval;
}