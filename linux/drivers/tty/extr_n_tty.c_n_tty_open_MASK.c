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
struct tty_struct {int /*<<< orphan*/  flags; scalar_t__ closing; struct n_tty_data* disc_data; } ;
struct n_tty_data {int /*<<< orphan*/  output_lock; int /*<<< orphan*/  atomic_read_lock; int /*<<< orphan*/  overrun_time; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TTY_LDISC_HALTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct n_tty_data* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty)
{
	struct n_tty_data *ldata;

	/* Currently a malloc failure here can panic */
	ldata = FUNC4(sizeof(*ldata));
	if (!ldata)
		return -ENOMEM;

	ldata->overrun_time = jiffies;
	FUNC1(&ldata->atomic_read_lock);
	FUNC1(&ldata->output_lock);

	tty->disc_data = ldata;
	tty->closing = 0;
	/* indicate buffer work may resume */
	FUNC0(TTY_LDISC_HALTED, &tty->flags);
	FUNC2(tty, NULL);
	FUNC3(tty);
	return 0;
}