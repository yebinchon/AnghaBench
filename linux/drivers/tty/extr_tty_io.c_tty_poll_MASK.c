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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* poll ) (struct tty_struct*,struct file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct tty_struct* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static __poll_t FUNC7(struct file *filp, poll_table *wait)
{
	struct tty_struct *tty = FUNC1(filp);
	struct tty_ldisc *ld;
	__poll_t ret = 0;

	if (FUNC6(tty, FUNC0(filp), "tty_poll"))
		return 0;

	ld = FUNC5(tty);
	if (!ld)
		return FUNC2(filp, wait);
	if (ld->ops->poll)
		ret = ld->ops->poll(tty, filp, wait);
	FUNC4(ld);
	return ret;
}