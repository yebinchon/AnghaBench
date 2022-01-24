#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IRQ_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct scsi_qla_host *ha)
{
	if (!FUNC3(AF_IRQ_ATTACHED, &ha->flags))
		return;

	if (ha->pdev->msix_enabled)
		FUNC0(FUNC2(ha->pdev, 1), ha);
	FUNC0(FUNC2(ha->pdev, 0), ha);
	FUNC1(ha->pdev);
}