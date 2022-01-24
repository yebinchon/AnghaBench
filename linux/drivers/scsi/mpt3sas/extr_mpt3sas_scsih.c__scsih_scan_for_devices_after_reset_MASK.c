#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct _sas_node {int dummy; } ;
struct _sas_device {int dummy; } ;
struct _raid_device {int dummy; } ;
struct _pcie_device {int dummy; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  raid_device_lock; int /*<<< orphan*/  pd_handles; int /*<<< orphan*/  ir_firmware; int /*<<< orphan*/  sas_node_lock; } ;
struct TYPE_30__ {int /*<<< orphan*/  WWID; int /*<<< orphan*/  ParentDevHandle; int /*<<< orphan*/  DeviceInfo; int /*<<< orphan*/  DevHandle; } ;
struct TYPE_29__ {int /*<<< orphan*/  IOCLogInfo; int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_28__ {int /*<<< orphan*/  VolDevHandle; int /*<<< orphan*/  ReasonCode; } ;
struct TYPE_27__ {int /*<<< orphan*/  SASAddress; int /*<<< orphan*/  DevHandle; } ;
struct TYPE_26__ {int PhysDiskNum; int /*<<< orphan*/  DevHandle; } ;
struct TYPE_25__ {scalar_t__ VolumeState; } ;
struct TYPE_24__ {int /*<<< orphan*/  DevHandle; int /*<<< orphan*/  WWID; } ;
struct TYPE_23__ {int /*<<< orphan*/  SASAddress; int /*<<< orphan*/  PhyNum; int /*<<< orphan*/  ParentDevHandle; int /*<<< orphan*/  DeviceInfo; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_1__ Mpi2SasDevicePage0_t ;
typedef  TYPE_2__ Mpi2RaidVolPage1_t ;
typedef  TYPE_3__ Mpi2RaidVolPage0_t ;
typedef  TYPE_4__ Mpi2RaidPhysDiskPage0_t ;
typedef  TYPE_5__ Mpi2ExpanderPage0_t ;
typedef  TYPE_6__ Mpi2EventIrConfigElement_t ;
typedef  TYPE_7__ Mpi2ConfigReply_t ;
typedef  TYPE_8__ Mpi26PCIeDevicePage0_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPI26_PCIE_DEVICE_PGAD_FORM_GET_NEXT_HANDLE ; 
 int /*<<< orphan*/  MPI2_EVENT_IR_CHANGE_RC_ADDED ; 
 int MPI2_IOCSTATUS_MASK ; 
 int MPI2_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPI2_PHYSDISK_PGAD_FORM_GET_NEXT_PHYSDISKNUM ; 
 int /*<<< orphan*/  MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE ; 
 int /*<<< orphan*/  MPI2_RAID_VOLUME_PGAD_FORM_HANDLE ; 
 scalar_t__ MPI2_RAID_VOL_STATE_DEGRADED ; 
 scalar_t__ MPI2_RAID_VOL_STATE_ONLINE ; 
 scalar_t__ MPI2_RAID_VOL_STATE_OPTIMAL ; 
 int /*<<< orphan*/  MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE ; 
 int /*<<< orphan*/  MPI2_SAS_DEVICE_PGAD_FORM_HANDLE ; 
 int /*<<< orphan*/  MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL ; 
 int /*<<< orphan*/  MPI2_SAS_NEG_LINK_RATE_1_5 ; 
 scalar_t__ FUNC0 (struct MPT3SAS_ADAPTER*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,int) ; 
 struct _raid_device* FUNC6 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct MPT3SAS_ADAPTER*,struct _sas_node*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPT3SAS_ADAPTER*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPT3SAS_ADAPTER*,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct MPT3SAS_ADAPTER*,TYPE_7__*,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct MPT3SAS_ADAPTER*,TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct MPT3SAS_ADAPTER*,TYPE_7__*,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (struct MPT3SAS_ADAPTER*,TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct MPT3SAS_ADAPTER*,TYPE_7__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (struct MPT3SAS_ADAPTER*,TYPE_7__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct _pcie_device* FUNC21 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 struct _sas_device* FUNC22 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 struct _sas_device* FUNC23 (struct MPT3SAS_ADAPTER*,int) ; 
 struct _sas_node* FUNC24 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 

__attribute__((used)) static void
FUNC32(struct MPT3SAS_ADAPTER *ioc)
{
	Mpi2ExpanderPage0_t expander_pg0;
	Mpi2SasDevicePage0_t sas_device_pg0;
	Mpi26PCIeDevicePage0_t pcie_device_pg0;
	Mpi2RaidVolPage1_t volume_pg1;
	Mpi2RaidVolPage0_t volume_pg0;
	Mpi2RaidPhysDiskPage0_t pd_pg0;
	Mpi2EventIrConfigElement_t element;
	Mpi2ConfigReply_t mpi_reply;
	u8 phys_disk_num;
	u16 ioc_status;
	u16 handle, parent_handle;
	u64 sas_address;
	struct _sas_device *sas_device;
	struct _pcie_device *pcie_device;
	struct _sas_node *expander_device;
	static struct _raid_device *raid_device;
	u8 retry_count;
	unsigned long flags;

	FUNC10(ioc, "scan devices: start\n");

	FUNC8(ioc);

	FUNC10(ioc, "\tscan devices: expanders start\n");

	/* expanders */
	handle = 0xFFFF;
	while (!(FUNC15(ioc, &mpi_reply, &expander_pg0,
	    MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL, handle))) {
		ioc_status = FUNC11(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from expander scan: ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		handle = FUNC11(expander_pg0.DevHandle);
		FUNC29(&ioc->sas_node_lock, flags);
		expander_device = FUNC24(
		    ioc, FUNC13(expander_pg0.SASAddress));
		FUNC30(&ioc->sas_node_lock, flags);
		if (expander_device)
			FUNC7(ioc, expander_device,
			    handle);
		else {
			FUNC10(ioc, "\tBEFORE adding expander: handle (0x%04x), sas_addr(0x%016llx)\n",
				 handle,
				 (u64)FUNC13(expander_pg0.SASAddress));
			FUNC1(ioc, handle);
			FUNC10(ioc, "\tAFTER adding expander: handle (0x%04x), sas_addr(0x%016llx)\n",
				 handle,
				 (u64)FUNC13(expander_pg0.SASAddress));
		}
	}

	FUNC10(ioc, "\tscan devices: expanders complete\n");

	if (!ioc->ir_firmware)
		goto skip_to_sas;

	FUNC10(ioc, "\tscan devices: phys disk start\n");

	/* phys disk */
	phys_disk_num = 0xFF;
	while (!(FUNC17(ioc, &mpi_reply,
	    &pd_pg0, MPI2_PHYSDISK_PGAD_FORM_GET_NEXT_PHYSDISKNUM,
	    phys_disk_num))) {
		ioc_status = FUNC11(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from phys disk scan: ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		phys_disk_num = pd_pg0.PhysDiskNum;
		handle = FUNC11(pd_pg0.DevHandle);
		sas_device = FUNC23(ioc, handle);
		if (sas_device) {
			FUNC27(sas_device);
			continue;
		}
		if (FUNC20(ioc, &mpi_reply,
		    &sas_device_pg0, MPI2_SAS_DEVICE_PGAD_FORM_HANDLE,
		    handle) != 0)
			continue;
		ioc_status = FUNC11(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from phys disk scan ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		parent_handle = FUNC11(sas_device_pg0.ParentDevHandle);
		if (!FUNC2(ioc, parent_handle,
		    &sas_address)) {
			FUNC10(ioc, "\tBEFORE adding phys disk: handle (0x%04x), sas_addr(0x%016llx)\n",
				 handle,
				 (u64)FUNC13(sas_device_pg0.SASAddress));
			FUNC25(ioc, sas_address,
			    handle, sas_device_pg0.PhyNum,
			    MPI2_SAS_NEG_LINK_RATE_1_5);
			FUNC28(handle, ioc->pd_handles);
			retry_count = 0;
			/* This will retry adding the end device.
			 * _scsih_add_device() will decide on retries and
			 * return "1" when it should be retried
			 */
			while (FUNC0(ioc, handle, retry_count++,
			    1)) {
				FUNC31(1);
			}
			FUNC10(ioc, "\tAFTER adding phys disk: handle (0x%04x), sas_addr(0x%016llx)\n",
				 handle,
				 (u64)FUNC13(sas_device_pg0.SASAddress));
		}
	}

	FUNC10(ioc, "\tscan devices: phys disk complete\n");

	FUNC10(ioc, "\tscan devices: volumes start\n");

	/* volumes */
	handle = 0xFFFF;
	while (!(FUNC19(ioc, &mpi_reply,
	    &volume_pg1, MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, handle))) {
		ioc_status = FUNC11(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from volume scan: ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		handle = FUNC11(volume_pg1.DevHandle);
		FUNC29(&ioc->raid_device_lock, flags);
		raid_device = FUNC6(ioc,
		    FUNC13(volume_pg1.WWID));
		FUNC30(&ioc->raid_device_lock, flags);
		if (raid_device)
			continue;
		if (FUNC18(ioc, &mpi_reply,
		    &volume_pg0, MPI2_RAID_VOLUME_PGAD_FORM_HANDLE, handle,
		     sizeof(Mpi2RaidVolPage0_t)))
			continue;
		ioc_status = FUNC11(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from volume scan: ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		if (volume_pg0.VolumeState == MPI2_RAID_VOL_STATE_OPTIMAL ||
		    volume_pg0.VolumeState == MPI2_RAID_VOL_STATE_ONLINE ||
		    volume_pg0.VolumeState == MPI2_RAID_VOL_STATE_DEGRADED) {
			FUNC14(&element, 0, sizeof(Mpi2EventIrConfigElement_t));
			element.ReasonCode = MPI2_EVENT_IR_CHANGE_RC_ADDED;
			element.VolDevHandle = volume_pg1.DevHandle;
			FUNC10(ioc, "\tBEFORE adding volume: handle (0x%04x)\n",
				 volume_pg1.DevHandle);
			FUNC9(ioc, &element);
			FUNC10(ioc, "\tAFTER adding volume: handle (0x%04x)\n",
				 volume_pg1.DevHandle);
		}
	}

	FUNC10(ioc, "\tscan devices: volumes complete\n");

 skip_to_sas:

	FUNC10(ioc, "\tscan devices: end devices start\n");

	/* sas devices */
	handle = 0xFFFF;
	while (!(FUNC20(ioc, &mpi_reply,
	    &sas_device_pg0, MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE,
	    handle))) {
		ioc_status = FUNC11(mpi_reply.IOCStatus) &
		    MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from end device scan: ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		handle = FUNC11(sas_device_pg0.DevHandle);
		if (!(FUNC3(
		    FUNC12(sas_device_pg0.DeviceInfo))))
			continue;
		sas_device = FUNC22(ioc,
		    FUNC13(sas_device_pg0.SASAddress));
		if (sas_device) {
			FUNC27(sas_device);
			continue;
		}
		parent_handle = FUNC11(sas_device_pg0.ParentDevHandle);
		if (!FUNC2(ioc, parent_handle, &sas_address)) {
			FUNC10(ioc, "\tBEFORE adding end device: handle (0x%04x), sas_addr(0x%016llx)\n",
				 handle,
				 (u64)FUNC13(sas_device_pg0.SASAddress));
			FUNC25(ioc, sas_address, handle,
			    sas_device_pg0.PhyNum, MPI2_SAS_NEG_LINK_RATE_1_5);
			retry_count = 0;
			/* This will retry adding the end device.
			 * _scsih_add_device() will decide on retries and
			 * return "1" when it should be retried
			 */
			while (FUNC0(ioc, handle, retry_count++,
			    0)) {
				FUNC31(1);
			}
			FUNC10(ioc, "\tAFTER adding end device: handle (0x%04x), sas_addr(0x%016llx)\n",
				 handle,
				 (u64)FUNC13(sas_device_pg0.SASAddress));
		}
	}
	FUNC10(ioc, "\tscan devices: end devices complete\n");
	FUNC10(ioc, "\tscan devices: pcie end devices start\n");

	/* pcie devices */
	handle = 0xFFFF;
	while (!(FUNC16(ioc, &mpi_reply,
		&pcie_device_pg0, MPI26_PCIE_DEVICE_PGAD_FORM_GET_NEXT_HANDLE,
		handle))) {
		ioc_status = FUNC11(mpi_reply.IOCStatus)
				& MPI2_IOCSTATUS_MASK;
		if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
			FUNC10(ioc, "\tbreak from pcie end device scan: ioc_status(0x%04x), loginfo(0x%08x)\n",
				 ioc_status, FUNC12(mpi_reply.IOCLogInfo));
			break;
		}
		handle = FUNC11(pcie_device_pg0.DevHandle);
		if (!(FUNC4(
			FUNC12(pcie_device_pg0.DeviceInfo))))
			continue;
		pcie_device = FUNC21(ioc,
				FUNC13(pcie_device_pg0.WWID));
		if (pcie_device) {
			FUNC26(pcie_device);
			continue;
		}
		retry_count = 0;
		parent_handle = FUNC11(pcie_device_pg0.ParentDevHandle);
		FUNC5(ioc, handle);

		FUNC10(ioc, "\tAFTER adding pcie end device: handle (0x%04x), wwid(0x%016llx)\n",
			 handle, (u64)FUNC13(pcie_device_pg0.WWID));
	}
	FUNC10(ioc, "\tpcie devices: pcie end devices complete\n");
	FUNC10(ioc, "scan devices: complete\n");
}