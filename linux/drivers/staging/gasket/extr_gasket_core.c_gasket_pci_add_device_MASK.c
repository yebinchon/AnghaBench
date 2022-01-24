#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; } ;
struct pci_dev {struct device dev; } ;
struct gasket_internal_desc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct gasket_dev {int /*<<< orphan*/  dev; TYPE_2__ dev_info; struct pci_dev* pci_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct device*,struct gasket_internal_desc*,struct gasket_dev**) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_internal_desc*,struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  g_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct gasket_dev*) ; 
 int FUNC6 (struct pci_dev*,struct gasket_dev*) ; 
 struct gasket_internal_desc* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(struct pci_dev *pci_dev,
			  struct gasket_dev **gasket_devp)
{
	int ret;
	struct gasket_internal_desc *internal_desc;
	struct gasket_dev *gasket_dev;
	struct device *parent;

	FUNC2(&pci_dev->dev, "add PCI gasket device\n");

	FUNC8(&g_mutex);
	internal_desc = FUNC7(pci_dev);
	FUNC9(&g_mutex);
	if (!internal_desc) {
		FUNC3(&pci_dev->dev,
			"PCI add device called for unknown driver type\n");
		return -ENODEV;
	}

	parent = &pci_dev->dev;
	ret = FUNC0(parent, internal_desc, &gasket_dev);
	if (ret)
		return ret;

	gasket_dev->pci_dev = pci_dev;
	ret = FUNC6(pci_dev, gasket_dev);
	if (ret)
		goto cleanup_pci;

	/*
	 * Once we've created the mapping structures successfully, attempt to
	 * create a symlink to the pci directory of this object.
	 */
	ret = FUNC10(&gasket_dev->dev_info.device->kobj,
				&pci_dev->dev.kobj, FUNC4(&pci_dev->dev));
	if (ret) {
		FUNC3(gasket_dev->dev,
			"Cannot create sysfs pci link: %d\n", ret);
		goto cleanup_pci;
	}

	*gasket_devp = gasket_dev;
	return 0;

cleanup_pci:
	FUNC5(gasket_dev);
	FUNC1(internal_desc, gasket_dev);
	return ret;
}