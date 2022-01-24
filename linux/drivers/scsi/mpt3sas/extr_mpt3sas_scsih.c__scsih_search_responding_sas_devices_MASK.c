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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_6__ {int /*<<< orphan*/  DeviceInfo; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_1__ Mpi2SasDevicePage0_t ;
typedef  TYPE_2__ Mpi2ConfigReply_t ;

/* Variables and functions */
 int MPI2_IOCSTATUS_MASK ; 
 int MPI2_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc)
{
	Mpi2SasDevicePage0_t sas_device_pg0;
	Mpi2ConfigReply_t mpi_reply;
	u16 ioc_status;
	u16 handle;
	u32 device_info;

	FUNC2(ioc, "search for end-devices: start\n");

	if (FUNC5(&ioc->sas_device_list))
		goto out;

	handle = 0xFFFF;
	while (!(FUNC6(ioc, &mpi_reply,
	    &sas_device_pg0, MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE,
	    handle))) {
		ioc_status = FUNC3(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
			break;
		handle = FUNC3(sas_device_pg0.DevHandle);
		device_info = FUNC4(sas_device_pg0.DeviceInfo);
		if (!(FUNC0(device_info)))
			continue;
		FUNC1(ioc, &sas_device_pg0);
	}

 out:
	FUNC2(ioc, "search for end-devices: complete\n");
}