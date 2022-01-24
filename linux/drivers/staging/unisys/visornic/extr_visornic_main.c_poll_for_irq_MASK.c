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
struct visornic_devdata {int /*<<< orphan*/  irq_poll_timer; int /*<<< orphan*/  interrupt_rcvd; int /*<<< orphan*/  napi; TYPE_1__* dev; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  visorchannel; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCHAN_FROM_IOPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct visornic_devdata* devdata ; 
 struct visornic_devdata* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_poll_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct visornic_devdata *devdata = FUNC1(devdata, t,
						      irq_poll_timer);

	if (!FUNC5(
				   devdata->dev->visorchannel,
				   IOCHAN_FROM_IOPART))
		FUNC4(&devdata->napi);

	FUNC0(&devdata->interrupt_rcvd, 0);

	FUNC2(&devdata->irq_poll_timer, FUNC3(2));
}