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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,char*,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	/* Shared ACPI/GPIO decode with all ICH6+ */
	FUNC0(dev);

	/* ICH6-specific generic IO decode */
	FUNC1(dev, 0x84, "LPC Generic IO decode 1", 0);
	FUNC1(dev, 0x88, "LPC Generic IO decode 2", 1);
}