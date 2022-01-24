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
struct vfio_pci_device {int /*<<< orphan*/  ioeventfds_list; int /*<<< orphan*/  ioeventfds_lock; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  igate; int /*<<< orphan*/  irq_type; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ hdr_type; int /*<<< orphan*/  dev; } ;
struct iommu_group {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ PCI_HEADER_TYPE_NORMAL ; 
 int /*<<< orphan*/  VFIO_PCI_NUM_IRQS ; 
 int /*<<< orphan*/  disable_idle_d3 ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_pci_device*) ; 
 struct vfio_pci_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct iommu_group* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iommu_group*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  vfio_pci_ops ; 
 int /*<<< orphan*/  FUNC12 (struct vfio_pci_device*) ; 
 int FUNC13 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct vfio_pci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vfio_pci_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct vfio_pci_device*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct vfio_pci_device*,int)) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct vfio_pci_device *vdev;
	struct iommu_group *group;
	int ret;

	if (pdev->hdr_type != PCI_HEADER_TYPE_NORMAL)
		return -EINVAL;

	/*
	 * Prevent binding to PFs with VFs enabled, this too easily allows
	 * userspace instance with VFs and PFs from the same device, which
	 * cannot work.  Disabling SR-IOV here would initiate removing the
	 * VFs, which would unbind the driver, which is prone to blocking
	 * if that VF is also in use by vfio-pci.  Just reject these PFs
	 * and let the user sort it out.
	 */
	if (FUNC4(pdev)) {
		FUNC5(pdev, "Cannot bind to PF with SR-IOV enabled\n");
		return -EBUSY;
	}

	group = FUNC9(&pdev->dev);
	if (!group)
		return -EINVAL;

	vdev = FUNC2(sizeof(*vdev), GFP_KERNEL);
	if (!vdev) {
		FUNC10(group, &pdev->dev);
		return -ENOMEM;
	}

	vdev->pdev = pdev;
	vdev->irq_type = VFIO_PCI_NUM_IRQS;
	FUNC3(&vdev->igate);
	FUNC6(&vdev->irqlock);
	FUNC3(&vdev->ioeventfds_lock);
	FUNC0(&vdev->ioeventfds_list);

	ret = FUNC7(&pdev->dev, &vfio_pci_ops, vdev);
	if (ret) {
		FUNC10(group, &pdev->dev);
		FUNC1(vdev);
		return ret;
	}

	ret = FUNC13(vdev);
	if (ret) {
		FUNC8(&pdev->dev);
		FUNC10(group, &pdev->dev);
		FUNC1(vdev);
		return ret;
	}

	if (FUNC11(pdev)) {
		FUNC16(pdev, vdev, NULL, vfio_pci_set_vga_decode);
		FUNC17(pdev,
					FUNC15(vdev, false));
	}

	FUNC12(vdev);

	if (!disable_idle_d3) {
		/*
		 * pci-core sets the device power state to an unknown value at
		 * bootup and after being removed from a driver.  The only
		 * transition it allows from this unknown state is to D0, which
		 * typically happens when a driver calls pci_enable_device().
		 * We're not ready to enable the device yet, but we do want to
		 * be able to get to D3.  Therefore first do a D0 transition
		 * before going to D3.
		 */
		FUNC14(vdev, PCI_D0);
		FUNC14(vdev, PCI_D3hot);
	}

	return ret;
}