#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {TYPE_1__* hw; int /*<<< orphan*/  pci_flags; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int /*<<< orphan*/  board_disable; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFLG_DISCONNECTED ; 
 int /*<<< orphan*/  PFLG_DRIVER_PROBING ; 
 int /*<<< orphan*/  PFLG_DRIVER_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC4(scsi_qla_host_t *vha, uint32_t reg)
{
	/* Check for PCI disconnection */
	if (reg == 0xffffffff && !FUNC0(vha->hw->pdev)) {
		if (!FUNC2(PFLG_DISCONNECTED, &vha->pci_flags) &&
		    !FUNC3(PFLG_DRIVER_REMOVING, &vha->pci_flags) &&
		    !FUNC3(PFLG_DRIVER_PROBING, &vha->pci_flags)) {
			/*
			 * Schedule this (only once) on the default system
			 * workqueue so that all the adapter workqueues and the
			 * DPC thread can be shutdown cleanly.
			 */
			FUNC1(&vha->hw->board_disable);
		}
		return true;
	} else
		return false;
}