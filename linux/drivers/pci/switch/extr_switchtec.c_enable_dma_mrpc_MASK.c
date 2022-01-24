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
struct switchtec_dev {TYPE_1__* mmio_mrpc; int /*<<< orphan*/  dma_mrpc_dma_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_en; int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCHTEC_DMA_MRPC_EN ; 
 int /*<<< orphan*/  FUNC0 (struct switchtec_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct switchtec_dev *stdev)
{
	FUNC2(stdev->dma_mrpc_dma_addr, &stdev->mmio_mrpc->dma_addr);
	FUNC0(stdev);
	FUNC1(SWITCHTEC_DMA_MRPC_EN, &stdev->mmio_mrpc->dma_en);
}