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
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,char*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	/* We share the common ACPI/GPIO decode with ICH6 */
	FUNC0(dev);

	/* And have 4 ICH7+ generic decodes */
	FUNC1(dev, 0x84, "ICH7 LPC Generic IO decode 1");
	FUNC1(dev, 0x88, "ICH7 LPC Generic IO decode 2");
	FUNC1(dev, 0x8c, "ICH7 LPC Generic IO decode 3");
	FUNC1(dev, 0x90, "ICH7 LPC Generic IO decode 4");
}