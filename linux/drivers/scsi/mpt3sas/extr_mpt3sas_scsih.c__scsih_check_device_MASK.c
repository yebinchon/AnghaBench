#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  void* u64 ;
typedef  int u32 ;
typedef  void* u16 ;
struct scsi_target {struct MPT3SAS_TARGET* hostdata; } ;
struct _sas_device {void* handle; char* connector_name; int enclosure_handle; int is_chassis_slot_valid; int /*<<< orphan*/  chassis_slot; void* enclosure_logical_id; scalar_t__ enclosure_level; struct scsi_target* starget; } ;
struct TYPE_6__ {int /*<<< orphan*/  ChassisSlot; int /*<<< orphan*/  Flags; int /*<<< orphan*/  EnclosureLogicalID; } ;
struct _enclosure_node {TYPE_1__ pg0; } ;
struct MPT3SAS_TARGET {void* handle; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_7__ {scalar_t__ PhyNum; int /*<<< orphan*/  AccessStatus; int /*<<< orphan*/  Flags; int /*<<< orphan*/  EnclosureHandle; int /*<<< orphan*/  ConnectorName; scalar_t__ EnclosureLevel; int /*<<< orphan*/  SASAddress; int /*<<< orphan*/  DeviceInfo; } ;
typedef  TYPE_2__ Mpi2SasDevicePage0_t ;
typedef  TYPE_3__ Mpi2ConfigReply_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int MPI2_IOCSTATUS_MASK ; 
 int MPI2_IOCSTATUS_SUCCESS ; 
 int MPI2_SAS_DEVICE0_FLAGS_DEVICE_PRESENT ; 
 int MPI2_SAS_DEVICE0_FLAGS_ENCL_LEVEL_VALID ; 
 int /*<<< orphan*/  MPI2_SAS_DEVICE_PGAD_FORM_HANDLE ; 
 int MPI2_SAS_ENCLS0_FLAGS_CHASSIS_SLOT_VALID ; 
 struct _sas_device* FUNC0 (struct MPT3SAS_ADAPTER*,void*) ; 
 scalar_t__ FUNC1 (struct MPT3SAS_ADAPTER*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,char*,void*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct MPT3SAS_ADAPTER*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 struct _enclosure_node* FUNC10 (struct MPT3SAS_ADAPTER*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct scsi_target*,char*,void*,void*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(struct MPT3SAS_ADAPTER *ioc,
	u64 parent_sas_address, u16 handle, u8 phy_number, u8 link_rate)
{
	Mpi2ConfigReply_t mpi_reply;
	Mpi2SasDevicePage0_t sas_device_pg0;
	struct _sas_device *sas_device;
	struct _enclosure_node *enclosure_dev = NULL;
	u32 ioc_status;
	unsigned long flags;
	u64 sas_address;
	struct scsi_target *starget;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	u32 device_info;

	if ((FUNC9(ioc, &mpi_reply, &sas_device_pg0,
	    MPI2_SAS_DEVICE_PGAD_FORM_HANDLE, handle)))
		return;

	ioc_status = FUNC5(mpi_reply.IOCStatus) & MPI2_IOCSTATUS_MASK;
	if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
		return;

	/* wide port handling ~ we need only handle device once for the phy that
	 * is matched in sas device page zero
	 */
	if (phy_number != sas_device_pg0.PhyNum)
		return;

	/* check if this is end device */
	device_info = FUNC6(sas_device_pg0.DeviceInfo);
	if (!(FUNC2(device_info)))
		return;

	FUNC12(&ioc->sas_device_lock, flags);
	sas_address = FUNC7(sas_device_pg0.SASAddress);
	sas_device = FUNC0(ioc,
	    sas_address);

	if (!sas_device)
		goto out_unlock;

	if (FUNC15(sas_device->handle != handle)) {
		starget = sas_device->starget;
		sas_target_priv_data = starget->hostdata;
		FUNC14(KERN_INFO, starget,
			"handle changed from(0x%04x) to (0x%04x)!!!\n",
			sas_device->handle, handle);
		sas_target_priv_data->handle = handle;
		sas_device->handle = handle;
		if (FUNC5(sas_device_pg0.Flags) &
		     MPI2_SAS_DEVICE0_FLAGS_ENCL_LEVEL_VALID) {
			sas_device->enclosure_level =
				sas_device_pg0.EnclosureLevel;
			FUNC8(sas_device->connector_name,
				sas_device_pg0.ConnectorName, 4);
			sas_device->connector_name[4] = '\0';
		} else {
			sas_device->enclosure_level = 0;
			sas_device->connector_name[0] = '\0';
		}

		sas_device->enclosure_handle =
				FUNC5(sas_device_pg0.EnclosureHandle);
		sas_device->is_chassis_slot_valid = 0;
		enclosure_dev = FUNC10(ioc,
						sas_device->enclosure_handle);
		if (enclosure_dev) {
			sas_device->enclosure_logical_id =
			    FUNC7(enclosure_dev->pg0.EnclosureLogicalID);
			if (FUNC5(enclosure_dev->pg0.Flags) &
			    MPI2_SAS_ENCLS0_FLAGS_CHASSIS_SLOT_VALID) {
				sas_device->is_chassis_slot_valid = 1;
				sas_device->chassis_slot =
					enclosure_dev->pg0.ChassisSlot;
			}
		}
	}

	/* check if device is present */
	if (!(FUNC5(sas_device_pg0.Flags) &
	    MPI2_SAS_DEVICE0_FLAGS_DEVICE_PRESENT)) {
		FUNC4(ioc, "device is not present handle(0x%04x), flags!!!\n",
			handle);
		goto out_unlock;
	}

	/* check if there were any issues with discovery */
	if (FUNC1(ioc, sas_address, handle,
	    sas_device_pg0.AccessStatus))
		goto out_unlock;

	FUNC13(&ioc->sas_device_lock, flags);
	FUNC3(ioc, sas_address);

	if (sas_device)
		FUNC11(sas_device);
	return;

out_unlock:
	FUNC13(&ioc->sas_device_lock, flags);
	if (sas_device)
		FUNC11(sas_device);
}