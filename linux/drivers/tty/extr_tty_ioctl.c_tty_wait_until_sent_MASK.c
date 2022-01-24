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
struct tty_struct {TYPE_1__* ops; int /*<<< orphan*/  write_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_until_sent ) (struct tty_struct*,long) ;} ;

/* Variables and functions */
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char*,long) ; 
 long FUNC3 (int /*<<< orphan*/ ,int,long) ; 

void FUNC4(struct tty_struct *tty, long timeout)
{
	FUNC2(tty, "wait until sent, timeout=%ld\n", timeout);

	if (!timeout)
		timeout = MAX_SCHEDULE_TIMEOUT;

	timeout = FUNC3(tty->write_wait,
			!FUNC1(tty), timeout);
	if (timeout <= 0)
		return;

	if (timeout == MAX_SCHEDULE_TIMEOUT)
		timeout = 0;

	if (tty->ops->wait_until_sent)
		tty->ops->wait_until_sent(tty, timeout);
}