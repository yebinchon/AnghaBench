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
struct tty_struct {struct tty3270* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct tty3270 {int inattr; TYPE_1__ view; } ;
struct ktermios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int TF_INPUT ; 
 int TF_INPUTN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty3270*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct tty_struct *tty, struct ktermios *old)
{
	struct tty3270 *tp;
	int new;

	tp = tty->driver_data;
	if (!tp)
		return;
	FUNC2(&tp->view.lock);
	if (FUNC1(tty)) {
		new = FUNC0(tty) ? TF_INPUT: TF_INPUTN;
		if (new != tp->inattr) {
			tp->inattr = new;
			FUNC5(tp, NULL, 0);
			FUNC4(tp, 1);
		}
	}
	FUNC3(&tp->view.lock);
}