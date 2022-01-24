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
struct tty_struct {struct tty_ldisc* ldisc; int /*<<< orphan*/  ldisc_sem; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_ldisc*) ; 
 int FUNC1 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tty_ldisc* FUNC3 (struct tty_struct*,int) ; 
 int FUNC4 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,int) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty, int ld)
{
	struct tty_ldisc *disc = FUNC3(tty, ld);
	int r;

	FUNC2(&tty->ldisc_sem);
	if (FUNC0(disc))
		return FUNC1(disc);
	tty->ldisc = disc;
	FUNC6(tty, ld);
	if ((r = FUNC4(tty, disc)) < 0)
		FUNC5(disc);
	return r;
}