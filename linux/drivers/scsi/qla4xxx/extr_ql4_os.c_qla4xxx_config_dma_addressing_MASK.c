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
struct scsi_qla_host {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct scsi_qla_host *ha)
{
	/* Update our PCI device dma_mask for full 64 bit mask */
	if (FUNC2(&ha->pdev->dev, FUNC0(64))) {
		FUNC1(&ha->pdev->dev,
			  "Failed to set 64 bit PCI consistent mask; "
			   "using 32 bit.\n");
		FUNC2(&ha->pdev->dev, FUNC0(32));
	}
}