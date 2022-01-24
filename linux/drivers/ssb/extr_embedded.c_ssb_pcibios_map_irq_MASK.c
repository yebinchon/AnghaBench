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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  gige_map_irq_callback ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const struct pci_dev *dev, u8 slot, u8 pin)
{
	int res;

	/* Check if this PCI device is a device on a SSB bus or device
	 * and return the IRQ number for it. */

	res = FUNC1(dev, slot, pin);
	if (res >= 0)
		return res;
#ifdef CONFIG_SSB_DRIVER_GIGE
	res = ssb_for_each_bus_call((unsigned long)dev, gige_map_irq_callback);
	if (res >= 0)
		return res;
#endif
	/* This is not a PCI device on any SSB device. */

	return -ENODEV;
}