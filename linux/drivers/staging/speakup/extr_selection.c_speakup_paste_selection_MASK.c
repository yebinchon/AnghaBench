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
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  tty; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  WORK_CPU_UNBOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ speakup_paste_work ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

int FUNC4(struct tty_struct *tty)
{
	FUNC2(tty);
	if (FUNC0(&speakup_paste_work.tty, NULL, tty)) {
		FUNC3(tty);
		return -EBUSY;
	}

	FUNC1(WORK_CPU_UNBOUND, &speakup_paste_work.work);
	return 0;
}