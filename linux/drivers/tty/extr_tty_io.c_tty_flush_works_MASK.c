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
struct tty_struct {TYPE_1__* link; int /*<<< orphan*/  hangup_work; int /*<<< orphan*/  SAK_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  hangup_work; int /*<<< orphan*/  SAK_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct tty_struct *tty)
{
	FUNC0(&tty->SAK_work);
	FUNC0(&tty->hangup_work);
	if (tty->link) {
		FUNC0(&tty->link->SAK_work);
		FUNC0(&tty->link->hangup_work);
	}
}