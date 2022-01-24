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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {scalar_t__ cfg_size; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDOWN_PCI_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct file *filp, struct kobject *kobj,
				struct bin_attribute *bin_attr, char *buf,
				loff_t off, size_t count)
{
	struct pci_dev *dev = FUNC7(FUNC0(kobj));
	unsigned int size = count;
	loff_t init_off = off;
	u8 *data = (u8 *) buf;
	int ret;

	ret = FUNC6(LOCKDOWN_PCI_ACCESS);
	if (ret)
		return ret;

	if (off > dev->cfg_size)
		return 0;
	if (off + count > dev->cfg_size) {
		size = dev->cfg_size - off;
		count = size;
	}

	FUNC1(dev);

	if ((off & 1) && size) {
		FUNC3(dev, off, data[off - init_off]);
		off++;
		size--;
	}

	if ((off & 3) && size > 2) {
		u16 val = data[off - init_off];
		val |= (u16) data[off - init_off + 1] << 8;
		FUNC5(dev, off, val);
		off += 2;
		size -= 2;
	}

	while (size > 3) {
		u32 val = data[off - init_off];
		val |= (u32) data[off - init_off + 1] << 8;
		val |= (u32) data[off - init_off + 2] << 16;
		val |= (u32) data[off - init_off + 3] << 24;
		FUNC4(dev, off, val);
		off += 4;
		size -= 4;
	}

	if (size >= 2) {
		u16 val = data[off - init_off];
		val |= (u16) data[off - init_off + 1] << 8;
		FUNC5(dev, off, val);
		off += 2;
		size -= 2;
	}

	if (size) {
		FUNC3(dev, off, data[off - init_off]);
		off++;
		--size;
	}

	FUNC2(dev);

	return count;
}