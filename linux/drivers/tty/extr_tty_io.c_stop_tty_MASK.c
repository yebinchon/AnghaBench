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
struct tty_struct {int /*<<< orphan*/  flow_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct tty_struct *tty)
{
	unsigned long flags;

	FUNC1(&tty->flow_lock, flags);
	FUNC0(tty);
	FUNC2(&tty->flow_lock, flags);
}