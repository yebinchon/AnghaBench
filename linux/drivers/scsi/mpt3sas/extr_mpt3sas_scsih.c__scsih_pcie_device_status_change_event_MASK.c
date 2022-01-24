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
typedef  int /*<<< orphan*/  u64 ;
struct fw_event_work {scalar_t__ event_data; } ;
struct _pcie_device {TYPE_1__* starget; } ;
struct MPT3SAS_TARGET {int tm_busy; } ;
struct MPT3SAS_ADAPTER {int logging_level; int /*<<< orphan*/  pcie_device_lock; } ;
struct TYPE_5__ {scalar_t__ ReasonCode; int /*<<< orphan*/  WWID; } ;
struct TYPE_4__ {struct MPT3SAS_TARGET* hostdata; } ;
typedef  TYPE_2__ Mpi26EventDataPCIeDeviceStatusChange_t ;

/* Variables and functions */
 scalar_t__ MPI26_EVENT_PCIDEV_STAT_RC_CMP_INTERNAL_DEV_RESET ; 
 scalar_t__ MPI26_EVENT_PCIDEV_STAT_RC_INTERNAL_DEVICE_RESET ; 
 int MPT_DEBUG_EVENT_WORK_TASK ; 
 struct _pcie_device* FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct MPT3SAS_ADAPTER *ioc,
	struct fw_event_work *fw_event)
{
	struct MPT3SAS_TARGET *target_priv_data;
	struct _pcie_device *pcie_device;
	u64 wwid;
	unsigned long flags;
	Mpi26EventDataPCIeDeviceStatusChange_t *event_data =
		(Mpi26EventDataPCIeDeviceStatusChange_t *)fw_event->event_data;
	if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
		FUNC1(ioc,
			event_data);

	if (event_data->ReasonCode !=
		MPI26_EVENT_PCIDEV_STAT_RC_INTERNAL_DEVICE_RESET &&
		event_data->ReasonCode !=
		MPI26_EVENT_PCIDEV_STAT_RC_CMP_INTERNAL_DEV_RESET)
		return;

	FUNC4(&ioc->pcie_device_lock, flags);
	wwid = FUNC2(event_data->WWID);
	pcie_device = FUNC0(ioc, wwid);

	if (!pcie_device || !pcie_device->starget)
		goto out;

	target_priv_data = pcie_device->starget->hostdata;
	if (!target_priv_data)
		goto out;

	if (event_data->ReasonCode ==
		MPI26_EVENT_PCIDEV_STAT_RC_INTERNAL_DEVICE_RESET)
		target_priv_data->tm_busy = 1;
	else
		target_priv_data->tm_busy = 0;
out:
	if (pcie_device)
		FUNC3(pcie_device);

	FUNC5(&ioc->pcie_device_lock, flags);
}