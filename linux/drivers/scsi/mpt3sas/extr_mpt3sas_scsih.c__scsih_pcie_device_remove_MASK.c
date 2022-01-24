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
typedef  char* u64 ;
struct _pcie_device {char* handle; scalar_t__ enclosure_handle; char* slot; char* connector_name; char* enclosure_level; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  list; scalar_t__ enclosure_logical_id; scalar_t__ wwid; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  pcie_device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc,
	struct _pcie_device *pcie_device)
{
	unsigned long flags;
	int was_on_pcie_device_list = 0;

	if (!pcie_device)
		return;
	FUNC0(ioc, "removing handle(0x%04x), wwid(0x%016llx)\n",
		 pcie_device->handle, (u64)pcie_device->wwid);
	if (pcie_device->enclosure_handle != 0)
		FUNC0(ioc, "removing enclosure logical id(0x%016llx), slot(%d)\n",
			 (u64)pcie_device->enclosure_logical_id,
			 pcie_device->slot);
	if (pcie_device->connector_name[0] != '\0')
		FUNC0(ioc, "removing enclosure level(0x%04x), connector name( %s)\n",
			 pcie_device->enclosure_level,
			 pcie_device->connector_name);

	FUNC5(&ioc->pcie_device_lock, flags);
	if (!FUNC3(&pcie_device->list)) {
		FUNC2(&pcie_device->list);
		was_on_pcie_device_list = 1;
	}
	FUNC6(&ioc->pcie_device_lock, flags);
	if (was_on_pcie_device_list) {
		FUNC1(pcie_device->serial_number);
		FUNC4(pcie_device);
	}
}