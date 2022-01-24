#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fw_event_work {scalar_t__ event_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_phys; } ;
struct MPT3SAS_ADAPTER {int logging_level; scalar_t__ shost_recovery; TYPE_1__ sas_hba; } ;
struct TYPE_4__ {scalar_t__ ReasonCode; scalar_t__ DiscoveryStatus; } ;
typedef  TYPE_2__ Mpi2EventDataSasDiscovery_t ;

/* Variables and functions */
 scalar_t__ MPI2_EVENT_SAS_DISC_RC_STARTED ; 
 int MPT_DEBUG_EVENT_WORK_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 scalar_t__ disable_discovery ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc,
	struct fw_event_work *fw_event)
{
	Mpi2EventDataSasDiscovery_t *event_data =
		(Mpi2EventDataSasDiscovery_t *) fw_event->event_data;

	if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK) {
		FUNC1(ioc, "discovery event: (%s)",
			 event_data->ReasonCode == MPI2_EVENT_SAS_DISC_RC_STARTED ?
			 "start" : "stop");
		if (event_data->DiscoveryStatus)
			FUNC3("discovery_status(0x%08x)",
				FUNC2(event_data->DiscoveryStatus));
		FUNC3("\n");
	}

	if (event_data->ReasonCode == MPI2_EVENT_SAS_DISC_RC_STARTED &&
	    !ioc->sas_hba.num_phys) {
		if (disable_discovery > 0 && ioc->shost_recovery) {
			/* Wait for the reset to complete */
			while (ioc->shost_recovery)
				FUNC4(1);
		}
		FUNC0(ioc);
	}
}