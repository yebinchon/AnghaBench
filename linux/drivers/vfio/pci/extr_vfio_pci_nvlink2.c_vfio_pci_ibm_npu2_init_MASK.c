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
typedef  void* u64 ;
typedef  int u32 ;
struct vfio_pci_npu2_data {int link_speed; scalar_t__ base; void* mmio_atsd; void* gpu_tgt; } ;
struct vfio_pci_device {struct pci_dev* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct pci_dev {TYPE_1__ dev; int /*<<< orphan*/  bus; } ;
struct pci_controller {int /*<<< orphan*/  dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEMREMAP_WT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PCI_VENDOR_ID_IBM ; 
 int /*<<< orphan*/  SZ_64K ; 
 int VFIO_REGION_INFO_FLAG_MMAP ; 
 int VFIO_REGION_INFO_FLAG_READ ; 
 int VFIO_REGION_INFO_FLAG_WRITE ; 
 int /*<<< orphan*/  VFIO_REGION_SUBTYPE_IBM_NVLINK2_ATSD ; 
 int VFIO_REGION_TYPE_PCI_VENDOR_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_pci_npu2_data*) ; 
 struct vfio_pci_npu2_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int,void**) ; 
 struct pci_controller* FUNC10 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  vfio_pci_npu2_regops ; 
 int FUNC13 (struct vfio_pci_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct vfio_pci_npu2_data*) ; 

int FUNC14(struct vfio_pci_device *vdev)
{
	int ret;
	struct vfio_pci_npu2_data *data;
	struct device_node *nvlink_dn;
	u32 nvlink_index = 0;
	struct pci_dev *npdev = vdev->pdev;
	struct device_node *npu_node = FUNC11(npdev);
	struct pci_controller *hose = FUNC10(npdev->bus);
	u64 mmio_atsd = 0;
	u64 tgt = 0;
	u32 link_speed = 0xff;

	/*
	 * PCI config space does not tell us about NVLink presense but
	 * platform does, use this.
	 */
	if (!FUNC12(vdev->pdev))
		return -ENODEV;

	/*
	 * NPU2 normally has 8 ATSD registers (for concurrency) and 6 links
	 * so we can allocate one register per link, using nvlink index as
	 * a key.
	 * There is always at least one ATSD register so as long as at least
	 * NVLink bridge #0 is passed to the guest, ATSD will be available.
	 */
	nvlink_dn = FUNC6(npdev->dev.of_node, "ibm,nvlink", 0);
	if (FUNC0(FUNC7(nvlink_dn, "ibm,npu-link-index",
			&nvlink_index)))
		return -ENODEV;

	if (FUNC9(hose->dn, "ibm,mmio-atsd", nvlink_index,
			&mmio_atsd)) {
		FUNC1(&vdev->pdev->dev, "No available ATSD found\n");
		mmio_atsd = 0;
	}

	if (FUNC8(npu_node, "ibm,device-tgt-addr", &tgt)) {
		FUNC1(&vdev->pdev->dev, "No ibm,device-tgt-addr found\n");
		return -EFAULT;
	}

	if (FUNC7(npu_node, "ibm,nvlink-speed", &link_speed)) {
		FUNC1(&vdev->pdev->dev, "No ibm,nvlink-speed found\n");
		return -EFAULT;
	}

	data = FUNC3(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->mmio_atsd = mmio_atsd;
	data->gpu_tgt = tgt;
	data->link_speed = link_speed;
	if (data->mmio_atsd) {
		data->base = FUNC4(data->mmio_atsd, SZ_64K, MEMREMAP_WT);
		if (!data->base) {
			ret = -ENOMEM;
			goto free_exit;
		}
	}

	/*
	 * We want to expose the capability even if this specific NVLink
	 * did not get its own ATSD register because capabilities
	 * belong to VFIO regions and normally there will be ATSD register
	 * assigned to the NVLink bridge.
	 */
	ret = FUNC13(vdev,
			PCI_VENDOR_ID_IBM |
			VFIO_REGION_TYPE_PCI_VENDOR_TYPE,
			VFIO_REGION_SUBTYPE_IBM_NVLINK2_ATSD,
			&vfio_pci_npu2_regops,
			data->mmio_atsd ? PAGE_SIZE : 0,
			VFIO_REGION_INFO_FLAG_READ |
			VFIO_REGION_INFO_FLAG_WRITE |
			VFIO_REGION_INFO_FLAG_MMAP,
			data);
	if (ret)
		goto free_exit;

	return 0;

free_exit:
	if (data->base)
		FUNC5(data->base);
	FUNC2(data);

	return ret;
}