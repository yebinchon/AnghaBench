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
struct _pcie_device {scalar_t__ access_status; scalar_t__ starget; int /*<<< orphan*/  id; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  is_driver_loading; int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 scalar_t__ MPI26_PCIEDEV0_ASTATUS_DEVICE_BLOCKED ; 
 int /*<<< orphan*/  PCIE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ; 
 struct _pcie_device* FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct _pcie_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc)
{
	struct _pcie_device *pcie_device;
	int rc;

	/* PCIe Device List */
	while ((pcie_device = FUNC1(ioc))) {
		if (pcie_device->starget) {
			FUNC3(pcie_device);
			continue;
		}
		if (pcie_device->access_status ==
		    MPI26_PCIEDEV0_ASTATUS_DEVICE_BLOCKED) {
			FUNC2(ioc, pcie_device);
			FUNC3(pcie_device);
			continue;
		}
		rc = FUNC4(ioc->shost, PCIE_CHANNEL,
			pcie_device->id, 0);
		if (rc) {
			FUNC0(ioc, pcie_device);
			FUNC3(pcie_device);
			continue;
		} else if (!pcie_device->starget) {
			/*
			 * When async scanning is enabled, its not possible to
			 * remove devices while scanning is turned on due to an
			 * oops in scsi_sysfs_add_sdev()->add_device()->
			 * sysfs_addrm_start()
			 */
			if (!ioc->is_driver_loading) {
			/* TODO-- Need to find out whether this condition will
			 * occur or not
			 */
				FUNC0(ioc, pcie_device);
				FUNC3(pcie_device);
				continue;
			}
		}
		FUNC2(ioc, pcie_device);
		FUNC3(pcie_device);
	}
}