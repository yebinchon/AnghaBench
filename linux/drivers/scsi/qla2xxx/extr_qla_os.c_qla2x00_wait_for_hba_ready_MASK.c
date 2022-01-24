#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ mbox_busy; } ;
struct qla_hw_data {TYPE_1__ flags; scalar_t__ dpc_active; int /*<<< orphan*/  pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FX00_RESET_RECOVERY ; 
 int /*<<< orphan*/  FX00_TARGET_SCAN ; 
 int /*<<< orphan*/  UNLOADING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	scsi_qla_host_t *base_vha = FUNC1(ha->pdev);

	while ((FUNC2(vha) || ha->dpc_active ||
		ha->flags.mbox_busy) ||
	       FUNC3(FX00_RESET_RECOVERY, &vha->dpc_flags) ||
	       FUNC3(FX00_TARGET_SCAN, &vha->dpc_flags)) {
		if (FUNC3(UNLOADING, &base_vha->dpc_flags))
			break;
		FUNC0(1000);
	}
}