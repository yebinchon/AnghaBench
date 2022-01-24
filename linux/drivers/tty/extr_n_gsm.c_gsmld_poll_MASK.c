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
struct tty_struct {int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; struct gsm_mux* disc_data; } ;
struct gsm_mux {scalar_t__ dead; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLHUP ; 
 int EPOLLOUT ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static __poll_t FUNC4(struct tty_struct *tty, struct file *file,
							poll_table *wait)
{
	__poll_t mask = 0;
	struct gsm_mux *gsm = tty->disc_data;

	FUNC0(file, &tty->read_wait, wait);
	FUNC0(file, &tty->write_wait, wait);
	if (FUNC1(file))
		mask |= EPOLLHUP;
	if (!FUNC2(tty) && FUNC3(tty) > 0)
		mask |= EPOLLOUT | EPOLLWRNORM;
	if (gsm->dead)
		mask |= EPOLLHUP;
	return mask;
}