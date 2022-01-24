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
struct switchtec_dev {int /*<<< orphan*/  mrpc_work; TYPE_1__* mmio_part_cfg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  mrpc_comp_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SWITCHTEC_EVENT_CLEAR ; 
 int SWITCHTEC_EVENT_EN_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev)
{
	struct switchtec_dev *stdev = dev;
	irqreturn_t ret = IRQ_NONE;

	FUNC0(SWITCHTEC_EVENT_CLEAR |
		  SWITCHTEC_EVENT_EN_IRQ,
		  &stdev->mmio_part_cfg->mrpc_comp_hdr);
	FUNC1(&stdev->mrpc_work);

	ret = IRQ_HANDLED;
	return ret;
}