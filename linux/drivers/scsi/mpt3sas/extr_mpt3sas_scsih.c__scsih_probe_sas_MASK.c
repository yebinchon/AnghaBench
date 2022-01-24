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
struct _sas_device {int /*<<< orphan*/  sas_address_parent; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  starget; int /*<<< orphan*/  handle; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  is_driver_loading; scalar_t__ hide_drives; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct _sas_device*) ; 
 struct _sas_device* FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,struct _sas_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct _sas_device*) ; 

__attribute__((used)) static void
FUNC6(struct MPT3SAS_ADAPTER *ioc)
{
	struct _sas_device *sas_device;

	if (ioc->hide_drives)
		return;

	while ((sas_device = FUNC1(ioc))) {
		if (!FUNC2(ioc, sas_device->handle,
		    sas_device->sas_address_parent)) {
			FUNC0(ioc, sas_device);
			FUNC5(sas_device);
			continue;
		} else if (!sas_device->starget) {
			/*
			 * When asyn scanning is enabled, its not possible to
			 * remove devices while scanning is turned on due to an
			 * oops in scsi_sysfs_add_sdev()->add_device()->
			 * sysfs_addrm_start()
			 */
			if (!ioc->is_driver_loading) {
				FUNC3(ioc,
				    sas_device->sas_address,
				    sas_device->sas_address_parent);
				FUNC0(ioc, sas_device);
				FUNC5(sas_device);
				continue;
			}
		}
		FUNC4(ioc, sas_device);
		FUNC5(sas_device);
	}
}