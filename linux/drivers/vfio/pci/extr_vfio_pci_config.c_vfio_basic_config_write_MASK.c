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
typedef  int u16 ;
struct vfio_pci_device {int virq_disabled; int bardirty; int /*<<< orphan*/ * vconfig; struct pci_dev* pdev; } ;
struct perm_bits {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 size_t PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_pci_device*) ; 
 int FUNC6 (struct vfio_pci_device*,int,int,struct perm_bits*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfio_pci_device*) ; 

__attribute__((used)) static int FUNC10(struct vfio_pci_device *vdev, int pos,
				   int count, struct perm_bits *perm,
				   int offset, __le32 val)
{
	struct pci_dev *pdev = vdev->pdev;
	__le16 *virt_cmd;
	u16 new_cmd = 0;
	int ret;

	virt_cmd = (__le16 *)&vdev->vconfig[PCI_COMMAND];

	if (offset == PCI_COMMAND) {
		bool phys_mem, virt_mem, new_mem, phys_io, virt_io, new_io;
		u16 phys_cmd;

		ret = FUNC4(pdev, PCI_COMMAND, &phys_cmd);
		if (ret)
			return ret;

		new_cmd = FUNC3(val);

		phys_mem = !!(phys_cmd & PCI_COMMAND_MEMORY);
		virt_mem = !!(FUNC2(*virt_cmd) & PCI_COMMAND_MEMORY);
		new_mem = !!(new_cmd & PCI_COMMAND_MEMORY);

		phys_io = !!(phys_cmd & PCI_COMMAND_IO);
		virt_io = !!(FUNC2(*virt_cmd) & PCI_COMMAND_IO);
		new_io = !!(new_cmd & PCI_COMMAND_IO);

		/*
		 * If the user is writing mem/io enable (new_mem/io) and we
		 * think it's already enabled (virt_mem/io), but the hardware
		 * shows it disabled (phys_mem/io, then the device has
		 * undergone some kind of backdoor reset and needs to be
		 * restored before we allow it to enable the bars.
		 * SR-IOV devices will trigger this, but we catch them later
		 */
		if ((new_mem && virt_mem && !phys_mem) ||
		    (new_io && virt_io && !phys_io) ||
		    FUNC7(vdev))
			FUNC5(vdev);
	}

	count = FUNC6(vdev, pos, count, perm, offset, val);
	if (count < 0)
		return count;

	/*
	 * Save current memory/io enable bits in vconfig to allow for
	 * the test above next time.
	 */
	if (offset == PCI_COMMAND) {
		u16 mask = PCI_COMMAND_MEMORY | PCI_COMMAND_IO;

		*virt_cmd &= FUNC0(~mask);
		*virt_cmd |= FUNC0(new_cmd & mask);
	}

	/* Emulate INTx disable */
	if (offset >= PCI_COMMAND && offset <= PCI_COMMAND + 1) {
		bool virt_intx_disable;

		virt_intx_disable = !!(FUNC2(*virt_cmd) &
				       PCI_COMMAND_INTX_DISABLE);

		if (virt_intx_disable && !vdev->virq_disabled) {
			vdev->virq_disabled = true;
			FUNC8(vdev);
		} else if (!virt_intx_disable && vdev->virq_disabled) {
			vdev->virq_disabled = false;
			FUNC9(vdev);
		}
	}

	if (FUNC1(offset))
		vdev->bardirty = true;

	return count;
}