#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct vfio_pci_device {int /*<<< orphan*/ * vconfig; TYPE_1__* pdev; } ;
struct perm_bits {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ is_virtfn; } ;

/* Variables and functions */
 int PCI_COMMAND ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_pci_device*) ; 
 int FUNC5 (struct vfio_pci_device*,int,int,struct perm_bits*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vfio_pci_device *vdev, int pos,
				  int count, struct perm_bits *perm,
				  int offset, __le32 *val)
{
	if (FUNC1(offset)) /* pos == offset for basic config */
		FUNC4(vdev);

	count = FUNC5(vdev, pos, count, perm, offset, val);

	/* Mask in virtual memory enable for SR-IOV devices */
	if (offset == PCI_COMMAND && vdev->pdev->is_virtfn) {
		u16 cmd = FUNC2(*(__le16 *)&vdev->vconfig[PCI_COMMAND]);
		u32 tmp_val = FUNC3(*val);

		tmp_val |= cmd & PCI_COMMAND_MEMORY;
		*val = FUNC0(tmp_val);
	}

	return count;
}