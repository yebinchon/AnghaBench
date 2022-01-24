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
struct vfio_pci_device {struct pci_dev* pdev; scalar_t__ vconfig; } ;
struct perm_bits {scalar_t__ virt; } ;
struct pci_dev {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int) ; 
 int FUNC2 (struct pci_dev*,int,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC3(struct vfio_pci_device *vdev, int pos,
				    int count, struct perm_bits *perm,
				    int offset, __le32 *val)
{
	__le32 virt = 0;

	FUNC1(val, vdev->vconfig + pos, count);

	FUNC1(&virt, perm->virt + offset, count);

	/* Any non-virtualized bits? */
	if (FUNC0(~0U >> (32 - (count * 8))) != virt) {
		struct pci_dev *pdev = vdev->pdev;
		__le32 phys_val = 0;
		int ret;

		ret = FUNC2(pdev, pos, &phys_val, count);
		if (ret)
			return ret;

		*val = (phys_val & ~virt) | (*val & virt);
	}

	return count;
}