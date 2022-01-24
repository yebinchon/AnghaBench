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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *pci_dev,
	const struct pci_device_id *id)
{
	char *ctrl_description;

	if (id->driver_data)
		ctrl_description = (char *)id->driver_data;
	else
		ctrl_description = "Microsemi Smart Family Controller";

	FUNC0(&pci_dev->dev, "%s found\n", ctrl_description);
}