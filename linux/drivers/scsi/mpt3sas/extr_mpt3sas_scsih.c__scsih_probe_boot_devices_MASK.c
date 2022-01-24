#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct _sas_device {int /*<<< orphan*/  starget; int /*<<< orphan*/  list; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  sas_address_parent; int /*<<< orphan*/  handle; } ;
struct _raid_device {int id; } ;
struct _pcie_device {int id; int /*<<< orphan*/  list; } ;
struct TYPE_8__ {scalar_t__ channel; void* device; } ;
struct TYPE_7__ {scalar_t__ channel; void* device; } ;
struct TYPE_6__ {scalar_t__ channel; void* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  BiosVersion; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  is_driver_loading; scalar_t__ hide_drives; int /*<<< orphan*/  sas_device_lock; int /*<<< orphan*/  sas_device_list; int /*<<< orphan*/  shost; int /*<<< orphan*/  pcie_device_lock; int /*<<< orphan*/  pcie_device_list; TYPE_4__ current_boot_device; TYPE_3__ req_alt_boot_device; TYPE_2__ req_boot_device; TYPE_1__ bios_pg3; } ;

/* Variables and functions */
 scalar_t__ PCIE_CHANNEL ; 
 scalar_t__ RAID_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,struct _raid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC9(struct MPT3SAS_ADAPTER *ioc)
{
	u32 channel;
	void *device;
	struct _sas_device *sas_device;
	struct _raid_device *raid_device;
	struct _pcie_device *pcie_device;
	u16 handle;
	u64 sas_address_parent;
	u64 sas_address;
	unsigned long flags;
	int rc;
	int tid;

	 /* no Bios, return immediately */
	if (!ioc->bios_pg3.BiosVersion)
		return;

	device = NULL;
	if (ioc->req_boot_device.device) {
		device =  ioc->req_boot_device.device;
		channel = ioc->req_boot_device.channel;
	} else if (ioc->req_alt_boot_device.device) {
		device =  ioc->req_alt_boot_device.device;
		channel = ioc->req_alt_boot_device.channel;
	} else if (ioc->current_boot_device.device) {
		device =  ioc->current_boot_device.device;
		channel = ioc->current_boot_device.channel;
	}

	if (!device)
		return;

	if (channel == RAID_CHANNEL) {
		raid_device = device;
		rc = FUNC6(ioc->shost, RAID_CHANNEL,
		    raid_device->id, 0);
		if (rc)
			FUNC1(ioc, raid_device);
	} else if (channel == PCIE_CHANNEL) {
		FUNC7(&ioc->pcie_device_lock, flags);
		pcie_device = device;
		tid = pcie_device->id;
		FUNC3(&pcie_device->list, &ioc->pcie_device_list);
		FUNC8(&ioc->pcie_device_lock, flags);
		rc = FUNC6(ioc->shost, PCIE_CHANNEL, tid, 0);
		if (rc)
			FUNC0(ioc, pcie_device);
	} else {
		FUNC7(&ioc->sas_device_lock, flags);
		sas_device = device;
		handle = sas_device->handle;
		sas_address_parent = sas_device->sas_address_parent;
		sas_address = sas_device->sas_address;
		FUNC3(&sas_device->list, &ioc->sas_device_list);
		FUNC8(&ioc->sas_device_lock, flags);

		if (ioc->hide_drives)
			return;
		if (!FUNC4(ioc, handle,
		    sas_address_parent)) {
			FUNC2(ioc, sas_device);
		} else if (!sas_device->starget) {
			if (!ioc->is_driver_loading) {
				FUNC5(ioc,
				    sas_address,
				    sas_address_parent);
				FUNC2(ioc, sas_device);
			}
		}
	}
}