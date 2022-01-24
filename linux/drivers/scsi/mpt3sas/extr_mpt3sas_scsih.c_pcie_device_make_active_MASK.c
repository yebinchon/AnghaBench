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
struct _pcie_device {int /*<<< orphan*/  list; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  pcie_device_lock; int /*<<< orphan*/  pcie_device_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct MPT3SAS_ADAPTER *ioc,
		struct _pcie_device *pcie_device)
{
	unsigned long flags;

	FUNC5(&ioc->pcie_device_lock, flags);

	if (!FUNC2(&pcie_device->list)) {
		FUNC1(&pcie_device->list);
		FUNC4(pcie_device);
	}
	FUNC3(pcie_device);
	FUNC0(&pcie_device->list, &ioc->pcie_device_list);

	FUNC6(&ioc->pcie_device_lock, flags);
}