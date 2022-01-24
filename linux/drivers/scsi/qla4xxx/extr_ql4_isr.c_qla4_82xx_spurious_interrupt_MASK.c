#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  tgt_mask_reg; } ;
struct scsi_qla_host {int /*<<< orphan*/  spurious_int_count; TYPE_3__ nx_legacy_intr; TYPE_2__* pdev; TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_5__ {int /*<<< orphan*/  msix_enabled; int /*<<< orphan*/  msi_enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct scsi_qla_host *ha,
    uint8_t reqs_count)
{
	if (reqs_count)
		return;

	FUNC0(FUNC2(KERN_INFO, ha, "Spurious Interrupt\n"));
	if (FUNC1(ha)) {
		FUNC4(0, &ha->qla4_82xx_reg->host_int);
		if (!ha->pdev->msi_enabled && !ha->pdev->msix_enabled)
			FUNC3(ha, ha->nx_legacy_intr.tgt_mask_reg,
			    0xfbff);
	}
	ha->spurious_int_count++;
}