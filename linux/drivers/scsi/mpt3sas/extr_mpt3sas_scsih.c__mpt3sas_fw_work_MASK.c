#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_event_work {int event; scalar_t__ event_data; int /*<<< orphan*/  device_handle; } ;
struct SL_WH_TRIGGERS_EVENT_DATA_T {int dummy; } ;
struct MPT3SAS_ADAPTER {int logging_level; int /*<<< orphan*/  start_scan; scalar_t__ remove_host; int /*<<< orphan*/  shost_recovery; int /*<<< orphan*/  shost; scalar_t__ pci_error_recovery; } ;
typedef  int /*<<< orphan*/  Mpi2EventDataSasDeviceStatusChange_t ;

/* Variables and functions */
#define  MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST 144 
#define  MPI2_EVENT_IR_OPERATION_STATUS 143 
#define  MPI2_EVENT_IR_PHYSICAL_DISK 142 
#define  MPI2_EVENT_IR_VOLUME 141 
#define  MPI2_EVENT_PCIE_DEVICE_STATUS_CHANGE 140 
#define  MPI2_EVENT_PCIE_ENUMERATION 139 
#define  MPI2_EVENT_PCIE_TOPOLOGY_CHANGE_LIST 138 
#define  MPI2_EVENT_SAS_BROADCAST_PRIMITIVE 137 
#define  MPI2_EVENT_SAS_DEVICE_DISCOVERY_ERROR 136 
#define  MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE 135 
#define  MPI2_EVENT_SAS_DISCOVERY 134 
#define  MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE 133 
#define  MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST 132 
#define  MPT3SAS_PORT_ENABLE_COMPLETE 131 
#define  MPT3SAS_PROCESS_TRIGGER_DIAG 130 
#define  MPT3SAS_REMOVE_UNRESPONDING_DEVICES 129 
#define  MPT3SAS_TURN_ON_PFA_LED 128 
 int MPT_DEBUG_EVENT_WORK_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC7 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC11 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC12 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC13 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC14 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC15 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC16 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC19 (struct MPT3SAS_ADAPTER*,char*) ; 
 int* missing_delay ; 
 int /*<<< orphan*/  FUNC20 (struct MPT3SAS_ADAPTER*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct MPT3SAS_ADAPTER*,struct SL_WH_TRIGGERS_EVENT_DATA_T*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static void
FUNC24(struct MPT3SAS_ADAPTER *ioc, struct fw_event_work *fw_event)
{
	FUNC0(ioc, fw_event);

	/* the queue is being flushed so ignore this event */
	if (ioc->remove_host || ioc->pci_error_recovery) {
		FUNC18(fw_event);
		return;
	}

	switch (fw_event->event) {
	case MPT3SAS_PROCESS_TRIGGER_DIAG:
		FUNC21(ioc,
			(struct SL_WH_TRIGGERS_EVENT_DATA_T *)
			fw_event->event_data);
		break;
	case MPT3SAS_REMOVE_UNRESPONDING_DEVICES:
		while (FUNC22(ioc->shost) ||
					 ioc->shost_recovery) {
			/*
			 * If we're unloading, bail. Otherwise, this can become
			 * an infinite loop.
			 */
			if (ioc->remove_host)
				goto out;
			FUNC23(1);
		}
		FUNC4(ioc);
		FUNC15(ioc);
		break;
	case MPT3SAS_PORT_ENABLE_COMPLETE:
		ioc->start_scan = 0;
		if (missing_delay[0] != -1 && missing_delay[1] != -1)
			FUNC20(ioc, missing_delay[0],
			    missing_delay[1]);
		FUNC17(ioc,
			   FUNC19(ioc, "port enable: complete from worker thread\n"));
		break;
	case MPT3SAS_TURN_ON_PFA_LED:
		FUNC16(ioc, fw_event->device_handle);
		break;
	case MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST:
		FUNC14(ioc, fw_event);
		break;
	case MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE:
		if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
			FUNC7(ioc,
			    (Mpi2EventDataSasDeviceStatusChange_t *)
			    fw_event->event_data);
		break;
	case MPI2_EVENT_SAS_DISCOVERY:
		FUNC8(ioc, fw_event);
		break;
	case MPI2_EVENT_SAS_DEVICE_DISCOVERY_ERROR:
		FUNC6(ioc, fw_event);
		break;
	case MPI2_EVENT_SAS_BROADCAST_PRIMITIVE:
		FUNC5(ioc, fw_event);
		break;
	case MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE:
		FUNC9(ioc,
		    fw_event);
		break;
	case MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST:
		FUNC10(ioc, fw_event);
		break;
	case MPI2_EVENT_IR_VOLUME:
		FUNC13(ioc, fw_event);
		break;
	case MPI2_EVENT_IR_PHYSICAL_DISK:
		FUNC12(ioc, fw_event);
		break;
	case MPI2_EVENT_IR_OPERATION_STATUS:
		FUNC11(ioc, fw_event);
		break;
	case MPI2_EVENT_PCIE_DEVICE_STATUS_CHANGE:
		FUNC1(ioc, fw_event);
		break;
	case MPI2_EVENT_PCIE_ENUMERATION:
		FUNC2(ioc, fw_event);
		break;
	case MPI2_EVENT_PCIE_TOPOLOGY_CHANGE_LIST:
		FUNC3(ioc, fw_event);
			return;
	break;
	}
out:
	FUNC18(fw_event);
}