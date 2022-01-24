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
typedef  int u8 ;
typedef  int u16 ;
struct fw_event_work {scalar_t__ ignore; scalar_t__ event_data; } ;
struct _pcie_device {int dummy; } ;
struct MPT3SAS_ADAPTER {int logging_level; scalar_t__ shost_recovery; int /*<<< orphan*/  pend_os_device_add; int /*<<< orphan*/  pcie_device_lock; scalar_t__ pci_error_recovery; scalar_t__ remove_host; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PortEntry; } ;
struct TYPE_4__ {int PortStatus; int CurrentPortInfo; int PreviousPortInfo; int /*<<< orphan*/  AttachedDevHandle; } ;
typedef  TYPE_2__ Mpi26EventDataPCIeTopologyChangeList_t ;

/* Variables and functions */
 int MPI26_EVENT_PCIE_TOPO_PI_RATE_2_5 ; 
 int MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK ; 
#define  MPI26_EVENT_PCIE_TOPO_PS_DEV_ADDED 130 
#define  MPI26_EVENT_PCIE_TOPO_PS_NOT_RESPONDING 129 
 int MPI26_EVENT_PCIE_TOPO_PS_NO_CHANGE ; 
#define  MPI26_EVENT_PCIE_TOPO_PS_PORT_CHANGED 128 
 int MPT_DEBUG_EVENT_WORK_TASK ; 
 struct _pcie_device* FUNC0 (struct MPT3SAS_ADAPTER*,int) ; 
 int FUNC1 (struct MPT3SAS_ADAPTER*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct MPT3SAS_ADAPTER *ioc,
	struct fw_event_work *fw_event)
{
	int i;
	u16 handle;
	u16 reason_code;
	u8 link_rate, prev_link_rate;
	unsigned long flags;
	int rc;
	Mpi26EventDataPCIeTopologyChangeList_t *event_data =
		(Mpi26EventDataPCIeTopologyChangeList_t *) fw_event->event_data;
	struct _pcie_device *pcie_device;

	if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
		FUNC4(ioc, event_data);

	if (ioc->shost_recovery || ioc->remove_host ||
		ioc->pci_error_recovery)
		return;

	if (fw_event->ignore) {
		FUNC5(ioc, FUNC6(ioc, "ignoring switch event\n"));
		return;
	}

	/* handle siblings events */
	for (i = 0; i < event_data->NumEntries; i++) {
		if (fw_event->ignore) {
			FUNC5(ioc,
				   FUNC6(ioc, "ignoring switch event\n"));
			return;
		}
		if (ioc->remove_host || ioc->pci_error_recovery)
			return;
		reason_code = event_data->PortEntry[i].PortStatus;
		handle =
			FUNC7(event_data->PortEntry[i].AttachedDevHandle);
		if (!handle)
			continue;

		link_rate = event_data->PortEntry[i].CurrentPortInfo
			& MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK;
		prev_link_rate = event_data->PortEntry[i].PreviousPortInfo
			& MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK;

		switch (reason_code) {
		case MPI26_EVENT_PCIE_TOPO_PS_PORT_CHANGED:
			if (ioc->shost_recovery)
				break;
			if (link_rate == prev_link_rate)
				break;
			if (link_rate < MPI26_EVENT_PCIE_TOPO_PI_RATE_2_5)
				break;

			FUNC2(ioc, handle);

			/* This code after this point handles the test case
			 * where a device has been added, however its returning
			 * BUSY for sometime.  Then before the Device Missing
			 * Delay expires and the device becomes READY, the
			 * device is removed and added back.
			 */
			FUNC9(&ioc->pcie_device_lock, flags);
			pcie_device = FUNC0(ioc, handle);
			FUNC10(&ioc->pcie_device_lock, flags);

			if (pcie_device) {
				FUNC8(pcie_device);
				break;
			}

			if (!FUNC11(handle, ioc->pend_os_device_add))
				break;

			FUNC5(ioc,
				   FUNC6(ioc, "handle(0x%04x) device not found: convert event to a device add\n",
					    handle));
			event_data->PortEntry[i].PortStatus &= 0xF0;
			event_data->PortEntry[i].PortStatus |=
				MPI26_EVENT_PCIE_TOPO_PS_DEV_ADDED;
			/* fall through */
		case MPI26_EVENT_PCIE_TOPO_PS_DEV_ADDED:
			if (ioc->shost_recovery)
				break;
			if (link_rate < MPI26_EVENT_PCIE_TOPO_PI_RATE_2_5)
				break;

			rc = FUNC1(ioc, handle);
			if (!rc) {
				/* mark entry vacant */
				/* TODO This needs to be reviewed and fixed,
				 * we dont have an entry
				 * to make an event void like vacant
				 */
				event_data->PortEntry[i].PortStatus |=
					MPI26_EVENT_PCIE_TOPO_PS_NO_CHANGE;
			}
			break;
		case MPI26_EVENT_PCIE_TOPO_PS_NOT_RESPONDING:
			FUNC3(ioc, handle);
			break;
		}
	}
}