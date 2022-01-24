#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct _raid_device {scalar_t__ direct_io_enabled; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  raid_device_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_5__ {int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_1__ Mpi2RaidVolPage1_t ;
typedef  TYPE_2__ Mpi2ConfigReply_t ;

/* Variables and functions */
 int MPI2_IOCSTATUS_CONFIG_INVALID_PAGE ; 
 int MPI2_IOCSTATUS_MASK ; 
 int /*<<< orphan*/  MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct _raid_device* FUNC2 (struct MPT3SAS_ADAPTER*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc)
{
	Mpi2RaidVolPage1_t vol_pg1;
	Mpi2ConfigReply_t mpi_reply;
	struct _raid_device *raid_device;
	u16 handle;
	u16 ioc_status;
	unsigned long flags;

	handle = 0xFFFF;
	while (!(FUNC1(ioc, &mpi_reply,
	    &vol_pg1, MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, handle))) {
		ioc_status = FUNC0(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status == MPI2_IOCSTATUS_CONFIG_INVALID_PAGE)
			break;
		handle = FUNC0(vol_pg1.DevHandle);
		FUNC3(&ioc->raid_device_lock, flags);
		raid_device = FUNC2(ioc, handle);
		if (raid_device)
			raid_device->direct_io_enabled = 0;
		FUNC4(&ioc->raid_device_lock, flags);
	}
	return;
}