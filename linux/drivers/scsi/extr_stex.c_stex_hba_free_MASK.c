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
struct st_hba {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/  dma_mem; int /*<<< orphan*/  dma_size; TYPE_1__* pdev; int /*<<< orphan*/  ccb; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  work_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct st_hba*) ; 

__attribute__((used)) static void FUNC6(struct st_hba *hba)
{
	FUNC5(hba);

	FUNC0(hba->work_q);

	FUNC2(hba->mmio_base);

	FUNC4(hba->pdev);

	FUNC3(hba->ccb);

	FUNC1(&hba->pdev->dev, hba->dma_size,
			  hba->dma_mem, hba->dma_handle);
}