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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; int /*<<< orphan*/  task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HSDMA_INT_RX_Q0 ; 
 int /*<<< orphan*/  HSDMA_REG_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct mtk_hsdam_engine *hsdma = devid;
	u32 status;

	status = FUNC2(hsdma, HSDMA_REG_INT_STATUS);
	if (FUNC5(!status))
		return IRQ_NONE;

	if (FUNC1(status & HSDMA_INT_RX_Q0))
		FUNC4(&hsdma->task);
	else
		FUNC0(hsdma->ddev.dev, "unhandle irq status %08x\n", status);
	/* clean intr bits */
	FUNC3(hsdma, HSDMA_REG_INT_STATUS, status);

	return IRQ_HANDLED;
}