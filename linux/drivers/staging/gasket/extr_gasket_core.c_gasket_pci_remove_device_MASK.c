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
struct pci_dev {int dummy; } ;
struct gasket_internal_desc {TYPE_1__* driver_desc; int /*<<< orphan*/  mutex; struct gasket_dev** devs; } ;
struct gasket_dev {int /*<<< orphan*/  dev; struct pci_dev* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int GASKET_DEV_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct gasket_internal_desc*,struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_dev*) ; 
 struct gasket_internal_desc* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct pci_dev *pci_dev)
{
	int i;
	struct gasket_internal_desc *internal_desc;
	struct gasket_dev *gasket_dev = NULL;
	/* Find the device desc. */
	FUNC4(&g_mutex);
	internal_desc = FUNC3(pci_dev);
	if (!internal_desc) {
		FUNC5(&g_mutex);
		return;
	}
	FUNC5(&g_mutex);

	/* Now find the specific device */
	FUNC4(&internal_desc->mutex);
	for (i = 0; i < GASKET_DEV_MAX; i++) {
		if (internal_desc->devs[i] &&
		    internal_desc->devs[i]->pci_dev == pci_dev) {
			gasket_dev = internal_desc->devs[i];
			break;
		}
	}
	FUNC5(&internal_desc->mutex);

	if (!gasket_dev)
		return;

	FUNC1(gasket_dev->dev, "remove %s PCI gasket device\n",
		internal_desc->driver_desc->name);

	FUNC2(gasket_dev);
	FUNC0(internal_desc, gasket_dev);
}