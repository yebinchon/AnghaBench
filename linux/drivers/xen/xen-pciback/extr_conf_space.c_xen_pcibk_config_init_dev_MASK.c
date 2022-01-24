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
struct xen_pcibk_dev_data {int /*<<< orphan*/  config_fields; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct xen_pcibk_dev_data* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 

int FUNC6(struct pci_dev *dev)
{
	int err = 0;
	struct xen_pcibk_dev_data *dev_data = FUNC2(dev);

	FUNC1(&dev->dev, "initializing virtual configuration space\n");

	FUNC0(&dev_data->config_fields);

	err = FUNC4(dev);
	if (err)
		goto out;

	err = FUNC3(dev);
	if (err)
		goto out;

	err = FUNC5(dev);

out:
	return err;
}