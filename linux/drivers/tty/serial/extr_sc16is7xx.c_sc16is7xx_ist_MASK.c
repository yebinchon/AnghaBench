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
struct sc16is7xx_port {int /*<<< orphan*/  efr_lock; TYPE_1__* devtype; } ;
struct kthread_work {int dummy; } ;
struct TYPE_2__ {int nr_uart; } ;

/* Variables and functions */
 int /*<<< orphan*/  irq_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sc16is7xx_port*,int) ; 
 struct sc16is7xx_port* FUNC3 (struct kthread_work*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kthread_work *ws)
{
	struct sc16is7xx_port *s = FUNC3(ws, irq_work);

	FUNC0(&s->efr_lock);

	while (1) {
		bool keep_polling = false;
		int i;

		for (i = 0; i < s->devtype->nr_uart; ++i)
			keep_polling |= FUNC2(s, i);
		if (!keep_polling)
			break;
	}

	FUNC1(&s->efr_lock);
}