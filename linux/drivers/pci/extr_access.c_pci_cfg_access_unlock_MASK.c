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
struct pci_dev {scalar_t__ block_cfg_access; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  pci_cfg_wait ; 
 int /*<<< orphan*/  pci_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pci_dev *dev)
{
	unsigned long flags;

	FUNC1(&pci_lock, flags);

	/*
	 * This indicates a problem in the caller, but we don't need
	 * to kill them, unlike a double-block above.
	 */
	FUNC0(!dev->block_cfg_access);

	dev->block_cfg_access = 0;
	FUNC2(&pci_lock, flags);

	FUNC3(&pci_cfg_wait);
}