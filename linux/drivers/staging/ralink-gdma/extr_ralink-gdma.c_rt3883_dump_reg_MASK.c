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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDMA_REG_ACKSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GDMA_REG_DONE_INT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GDMA_REG_FINSTS ; 
 int /*<<< orphan*/  GDMA_REG_REQSTS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  GDMA_REG_UNMASK_INT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdma_dma_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gdma_dma_dev *dma_dev, int id)
{
	FUNC4(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, ctr1 %08x, unmask %08x, done %08x, req %08x, ack %08x, fin %08x\n",
		id,
		FUNC5(dma_dev, FUNC3(id)),
		FUNC5(dma_dev, FUNC2(id)),
		FUNC5(dma_dev, FUNC0(id)),
		FUNC5(dma_dev, FUNC1(id)),
		FUNC5(dma_dev, GDMA_REG_UNMASK_INT),
		FUNC5(dma_dev, GDMA_REG_DONE_INT),
		FUNC5(dma_dev, GDMA_REG_REQSTS),
		FUNC5(dma_dev, GDMA_REG_ACKSTS),
		FUNC5(dma_dev, GDMA_REG_FINSTS));
}