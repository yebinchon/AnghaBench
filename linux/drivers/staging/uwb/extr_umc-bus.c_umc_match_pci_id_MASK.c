#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct umc_driver {struct pci_device_id* match_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct pci_device_id const*,struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct umc_driver *umc_drv, struct umc_dev *umc)
{
	const struct pci_device_id *id_table = umc_drv->match_data;
	struct pci_dev *pci;

	if (!FUNC0(umc->dev.parent))
		return 0;

	pci = FUNC2(umc->dev.parent);
	return FUNC1(id_table, pci) != NULL;
}