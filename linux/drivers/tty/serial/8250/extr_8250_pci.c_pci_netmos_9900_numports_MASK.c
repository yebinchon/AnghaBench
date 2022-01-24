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
struct pci_dev {unsigned int class; scalar_t__ device; int subsystem_device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_NETMOS_9900 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pci_dev*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *dev)
{
	unsigned int c = dev->class;
	unsigned int pi;
	unsigned short sub_serports;

	pi = c & 0xff;

	if (pi == 2)
		return 1;

	if ((pi == 0) && (dev->device == PCI_DEVICE_ID_NETMOS_9900)) {
		/* two possibilities: 0x30ps encodes number of parallel and
		 * serial ports, or 0x1000 indicates *something*. This is not
		 * immediately obvious, since the 2s1p+4s configuration seems
		 * to offer all functionality on functions 0..2, while still
		 * advertising the same function 3 as the 4s+2s1p config.
		 */
		sub_serports = dev->subsystem_device & 0xf;
		if (sub_serports > 0)
			return sub_serports;

		FUNC0(&dev->dev,
			"NetMos/Mostech serial driver ignoring port on ambiguous config.\n");
		return 0;
	}

	FUNC1("unknown NetMos/Mostech program interface", dev);
	return 0;
}