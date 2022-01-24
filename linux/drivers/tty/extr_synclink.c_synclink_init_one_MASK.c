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
struct pci_dev {int device; int /*<<< orphan*/  irq; } ;
struct mgsl_struct {int phys_lcr_base; int lcr_offset; int io_addr_size; int misc_ctrl_value; int hw_version; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  bus_type; void* phys_memory_base; int /*<<< orphan*/  irq_level; void* io_base; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MGSL_BUS_TYPE_PCI ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mgsl_struct*) ; 
 struct mgsl_struct* FUNC1 () ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 void* FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5 (struct pci_dev *dev,
					const struct pci_device_id *ent)
{
	struct mgsl_struct *info;

	if (FUNC2(dev)) {
		FUNC4("error enabling pci device %p\n", dev);
		return -EIO;
	}

	info = FUNC1();
	if (!info) {
		FUNC4("can't allocate device instance data.\n");
		return -EIO;
	}

        /* Copy user configuration info to device instance data */
		
	info->io_base = FUNC3(dev, 2);
	info->irq_level = dev->irq;
	info->phys_memory_base = FUNC3(dev, 3);
				
        /* Because veremap only works on page boundaries we must map
	 * a larger area than is actually implemented for the LCR
	 * memory range. We map a full page starting at the page boundary.
	 */
	info->phys_lcr_base = FUNC3(dev, 0);
	info->lcr_offset    = info->phys_lcr_base & (PAGE_SIZE-1);
	info->phys_lcr_base &= ~(PAGE_SIZE-1);
				
	info->bus_type = MGSL_BUS_TYPE_PCI;
	info->io_addr_size = 8;
	info->irq_flags = IRQF_SHARED;

	if (dev->device == 0x0210) {
		/* Version 1 PCI9030 based universal PCI adapter */
		info->misc_ctrl_value = 0x007c4080;
		info->hw_version = 1;
	} else {
		/* Version 0 PCI9050 based 5V PCI adapter
		 * A PCI9050 bug prevents reading LCR registers if 
		 * LCR base address bit 7 is set. Maintain shadow
		 * value so we can write to LCR misc control reg.
		 */
		info->misc_ctrl_value = 0x087e4546;
		info->hw_version = 0;
	}
				
	FUNC0(info);

	return 0;
}