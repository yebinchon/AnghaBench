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
struct vc_data {int /*<<< orphan*/  port; int /*<<< orphan*/  paste_wait; } ;
struct tty_struct {struct vc_data* driver_data; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ sel_buffer ; 
 int sel_buffer_lth ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_ldisc*) ; 
 unsigned int FUNC12 (struct tty_ldisc*,scalar_t__,int /*<<< orphan*/ *,unsigned int) ; 
 struct tty_ldisc* FUNC13 (struct tty_struct*) ; 
 scalar_t__ FUNC14 (struct tty_struct*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC15(struct tty_struct *tty)
{
	struct vc_data *vc = tty->driver_data;
	int	pasted = 0;
	unsigned int count;
	struct  tty_ldisc *ld;
	FUNC0(wait, current);

	FUNC3();
	FUNC5();
	FUNC4();

	ld = FUNC13(tty);
	if (!ld)
		return -EIO;	/* ldisc was hung up */
	FUNC9(&vc->port);

	FUNC2(&vc->paste_wait, &wait);
	while (sel_buffer && sel_buffer_lth > pasted) {
		FUNC8(TASK_INTERRUPTIBLE);
		if (FUNC14(tty)) {
			FUNC7();
			continue;
		}
		FUNC1(TASK_RUNNING);
		count = sel_buffer_lth - pasted;
		count = FUNC12(ld, sel_buffer + pasted, NULL,
					      count);
		pasted += count;
	}
	FUNC6(&vc->paste_wait, &wait);
	FUNC1(TASK_RUNNING);

	FUNC10(&vc->port);
	FUNC11(ld);
	return 0;
}