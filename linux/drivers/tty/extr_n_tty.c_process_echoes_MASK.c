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
struct tty_struct {TYPE_1__* ops; struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ echo_mark; scalar_t__ echo_tail; scalar_t__ echo_commit; int /*<<< orphan*/  output_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_chars ) (struct tty_struct*) ;} ;

/* Variables and functions */
 size_t FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;
	size_t echoed;

	if (ldata->echo_mark == ldata->echo_tail)
		return;

	FUNC1(&ldata->output_lock);
	ldata->echo_commit = ldata->echo_mark;
	echoed = FUNC0(tty);
	FUNC2(&ldata->output_lock);

	if (echoed && tty->ops->flush_chars)
		tty->ops->flush_chars(tty);
}