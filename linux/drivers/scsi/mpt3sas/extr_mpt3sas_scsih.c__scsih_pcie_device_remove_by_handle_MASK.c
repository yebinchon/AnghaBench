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
typedef  int /*<<< orphan*/  u16 ;
struct _pcie_device {int /*<<< orphan*/  list; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  pcie_device_lock; scalar_t__ shost_recovery; } ;

/* Variables and functions */
 struct _pcie_device* FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
	struct _pcie_device *pcie_device;
	unsigned long flags;
	int was_on_pcie_device_list = 0;

	if (ioc->shost_recovery)
		return;

	FUNC5(&ioc->pcie_device_lock, flags);
	pcie_device = FUNC0(ioc, handle);
	if (pcie_device) {
		if (!FUNC3(&pcie_device->list)) {
			FUNC2(&pcie_device->list);
			was_on_pcie_device_list = 1;
			FUNC4(pcie_device);
		}
	}
	FUNC6(&ioc->pcie_device_lock, flags);
	if (was_on_pcie_device_list) {
		FUNC1(ioc, pcie_device);
		FUNC4(pcie_device);
	}
}