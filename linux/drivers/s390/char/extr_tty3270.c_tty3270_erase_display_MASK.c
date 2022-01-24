#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rows; } ;
struct tty3270 {int cy; TYPE_2__* screen; TYPE_1__ view; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty3270*) ; 

__attribute__((used)) static void
FUNC3(struct tty3270 *tp, int mode)
{
	int i;

	if (mode == 0) {
		FUNC1(tp, 0);
		for (i = tp->cy + 1; i < tp->view.rows - 2; i++) {
			tp->screen[i].len = 0;
			FUNC0(tp, i);
		}
	} else if (mode == 1) {
		for (i = 0; i < tp->cy; i++) {
			tp->screen[i].len = 0;
			FUNC0(tp, i);
		}
		FUNC1(tp, 1);
	} else if (mode == 2) {
		for (i = 0; i < tp->view.rows - 2; i++) {
			tp->screen[i].len = 0;
			FUNC0(tp, i);
		}
	}
	FUNC2(tp);
}