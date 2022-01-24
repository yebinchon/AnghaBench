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
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fixed_dma_alias_tbl ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_device_id* FUNC1 (int /*<<< orphan*/ ,struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	const struct pci_device_id *id;

	id = FUNC1(fixed_dma_alias_tbl, dev);
	if (id)
		FUNC0(dev, id->driver_data);
}