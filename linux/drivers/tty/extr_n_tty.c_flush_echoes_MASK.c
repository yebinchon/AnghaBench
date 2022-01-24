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
struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ echo_commit; scalar_t__ echo_head; int /*<<< orphan*/  output_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	if ((!FUNC0(tty) && !FUNC1(tty)) ||
	    ldata->echo_commit == ldata->echo_head)
		return;

	FUNC3(&ldata->output_lock);
	ldata->echo_commit = ldata->echo_head;
	FUNC2(tty);
	FUNC4(&ldata->output_lock);
}