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
typedef  int u32 ;
struct ssb_bus {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {TYPE_1__* driver; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_bus*) ; 
 struct ssb_bus* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int) ; 
 int FUNC11 (struct ssb_bus*,struct pci_dev*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *dev,
			     const struct pci_device_id *id)
{
	struct ssb_bus *ssb;
	int err = -ENOMEM;
	const char *name;
	u32 val;

	ssb = FUNC2(sizeof(*ssb), GFP_KERNEL);
	if (!ssb)
		goto out;
	err = FUNC4(dev);
	if (err)
		goto err_kfree_ssb;
	name = FUNC0(&dev->dev);
	if (dev->driver && dev->driver->name)
		name = dev->driver->name;
	err = FUNC7(dev, name);
	if (err)
		goto err_pci_disable;
	FUNC9(dev);

	/* Disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC5(dev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC10(dev, 0x40, val & 0xffff00ff);

	err = FUNC11(ssb, dev);
	if (err)
		goto err_pci_release_regions;

	FUNC8(dev, ssb);

out:
	return err;

err_pci_release_regions:
	FUNC6(dev);
err_pci_disable:
	FUNC3(dev);
err_kfree_ssb:
	FUNC1(ssb);
	return err;
}