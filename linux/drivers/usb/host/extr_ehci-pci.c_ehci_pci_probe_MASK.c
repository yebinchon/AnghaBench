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
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,struct pci_device_id const*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev, const struct pci_device_id *id)
{
	if (FUNC0(pdev))
		return -ENODEV;
	return FUNC1(pdev, id);
}