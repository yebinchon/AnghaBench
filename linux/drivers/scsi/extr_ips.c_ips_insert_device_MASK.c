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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ips_ha ; 
 scalar_t__ ips_hotplug ; 
 int FUNC2 (struct pci_dev*,int*) ; 
 int FUNC3 (int) ; 
 scalar_t__ ips_next_controller ; 
 scalar_t__ ips_num_controllers ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * ips_sh ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct pci_dev *pci_dev, const struct pci_device_id *ent)
{
	int index = -1;
	int rc;

	FUNC0("ips_insert_device", 1);
	rc = FUNC6(pci_dev);
	if (rc)
		return rc;

	rc = FUNC8(pci_dev, "ips");
	if (rc)
		goto err_out;

	rc = FUNC2(pci_dev, &index);
	if (rc == SUCCESS)
		rc = FUNC3(index);

	if (ips_hotplug)
		if (FUNC4(index)) {
			FUNC1(ips_ha[index]);
			rc = -1;
		}

	if (rc == SUCCESS)
		ips_num_controllers++;

	ips_next_controller = ips_num_controllers;

	if (rc < 0) {
		rc = -ENODEV;
		goto err_out_regions;
	}

	FUNC9(pci_dev, ips_sh[index]);
	return 0;

err_out_regions:
	FUNC7(pci_dev);
err_out:
	FUNC5(pci_dev);
	return rc;
}