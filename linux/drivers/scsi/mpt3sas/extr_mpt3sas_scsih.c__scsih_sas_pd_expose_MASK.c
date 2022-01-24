#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct scsi_target {struct MPT3SAS_TARGET* hostdata; } ;
struct _sas_device {struct scsi_target* starget; scalar_t__ volume_wwid; scalar_t__ volume_handle; } ;
struct MPT3SAS_TARGET {int /*<<< orphan*/  flags; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; int /*<<< orphan*/  pd_handles; } ;
struct TYPE_3__ {int /*<<< orphan*/  PhysDiskDevHandle; } ;
typedef  TYPE_1__ Mpi2EventIrConfigElement_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 struct _sas_device* FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _scsih_reprobe_lun ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_target*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc,
	Mpi2EventIrConfigElement_t *element)
{
	struct _sas_device *sas_device;
	struct scsi_target *starget = NULL;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	unsigned long flags;
	u16 handle = FUNC2(element->PhysDiskDevHandle);

	FUNC4(&ioc->sas_device_lock, flags);
	sas_device = FUNC0(ioc, handle);
	if (sas_device) {
		sas_device->volume_handle = 0;
		sas_device->volume_wwid = 0;
		FUNC1(handle, ioc->pd_handles);
		if (sas_device->starget && sas_device->starget->hostdata) {
			starget = sas_device->starget;
			sas_target_priv_data = starget->hostdata;
			sas_target_priv_data->flags &=
			    ~MPT_TARGET_FLAGS_RAID_COMPONENT;
		}
	}
	FUNC5(&ioc->sas_device_lock, flags);
	if (!sas_device)
		return;

	/* exposing raid component */
	if (starget)
		FUNC6(starget, NULL, _scsih_reprobe_lun);

	FUNC3(sas_device);
}