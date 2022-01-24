#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct switchtec_ntb {TYPE_2__* mmio_self_dbmsg; TYPE_1__* stdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_3__* imsg; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int LINK_MESSAGE ; 
 int NTB_DBMSG_IMSG_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct switchtec_ntb*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	int i;
	struct switchtec_ntb *sndev = dev;

	for (i = 0; i < FUNC0(sndev->mmio_self_dbmsg->imsg); i++) {
		u64 msg = FUNC2(&sndev->mmio_self_dbmsg->imsg[i]);

		if (msg & NTB_DBMSG_IMSG_STATUS) {
			FUNC1(&sndev->stdev->dev, "message: %d %08x\n",
				i, (u32)msg);
			FUNC3(1, &sndev->mmio_self_dbmsg->imsg[i].status);

			if (i == LINK_MESSAGE)
				FUNC4(sndev, msg);
		}
	}

	return IRQ_HANDLED;
}