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
typedef  int u32 ;
struct pci_vpd {int valid; scalar_t__ len; int busy; int /*<<< orphan*/  lock; scalar_t__ flag; scalar_t__ cap; } ;
struct pci_dev {struct pci_vpd* vpd; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ PCI_VPD_ADDR ; 
 scalar_t__ PCI_VPD_ADDR_F ; 
 scalar_t__ PCI_VPD_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,scalar_t__,int) ; 
 int FUNC3 (struct pci_dev*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct pci_dev*,scalar_t__) ; 
 int FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static ssize_t FUNC6(struct pci_dev *dev, loff_t pos, size_t count,
			     const void *arg)
{
	struct pci_vpd *vpd = dev->vpd;
	const u8 *buf = arg;
	loff_t end = pos + count;
	int ret = 0;

	if (pos < 0 || (pos & 3) || (count & 3))
		return -EINVAL;

	if (!vpd->valid) {
		vpd->valid = 1;
		vpd->len = FUNC4(dev, vpd->len);
	}

	if (vpd->len == 0)
		return -EIO;

	if (end > vpd->len)
		return -EINVAL;

	if (FUNC0(&vpd->lock))
		return -EINTR;

	ret = FUNC5(dev);
	if (ret < 0)
		goto out;

	while (pos < end) {
		u32 val;

		val = *buf++;
		val |= *buf++ << 8;
		val |= *buf++ << 16;
		val |= *buf++ << 24;

		ret = FUNC2(dev, vpd->cap + PCI_VPD_DATA, val);
		if (ret < 0)
			break;
		ret = FUNC3(dev, vpd->cap + PCI_VPD_ADDR,
						 pos | PCI_VPD_ADDR_F);
		if (ret < 0)
			break;

		vpd->busy = 1;
		vpd->flag = 0;
		ret = FUNC5(dev);
		if (ret < 0)
			break;

		pos += sizeof(u32);
	}
out:
	FUNC1(&vpd->lock);
	return ret ? ret : count;
}