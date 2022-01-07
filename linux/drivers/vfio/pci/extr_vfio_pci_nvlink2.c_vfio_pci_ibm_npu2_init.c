
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct vfio_pci_npu2_data {int link_speed; scalar_t__ base; void* mmio_atsd; void* gpu_tgt; } ;
struct vfio_pci_device {struct pci_dev* pdev; } ;
struct TYPE_2__ {int of_node; } ;
struct pci_dev {TYPE_1__ dev; int bus; } ;
struct pci_controller {int dn; } ;
struct device_node {int dummy; } ;


 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEMREMAP_WT ;
 int PAGE_SIZE ;
 int PCI_VENDOR_ID_IBM ;
 int SZ_64K ;
 int VFIO_REGION_INFO_FLAG_MMAP ;
 int VFIO_REGION_INFO_FLAG_READ ;
 int VFIO_REGION_INFO_FLAG_WRITE ;
 int VFIO_REGION_SUBTYPE_IBM_NVLINK2_ATSD ;
 int VFIO_REGION_TYPE_PCI_VENDOR_TYPE ;
 scalar_t__ WARN_ON (scalar_t__) ;
 int dev_warn (TYPE_1__*,char*) ;
 int kfree (struct vfio_pci_npu2_data*) ;
 struct vfio_pci_npu2_data* kzalloc (int,int ) ;
 scalar_t__ memremap (void*,int ,int ) ;
 int memunmap (scalar_t__) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 scalar_t__ of_property_read_u64 (struct device_node*,char*,void**) ;
 scalar_t__ of_property_read_u64_index (int ,char*,int,void**) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 int pnv_pci_get_gpu_dev (struct pci_dev*) ;
 int vfio_pci_npu2_regops ;
 int vfio_pci_register_dev_region (struct vfio_pci_device*,int,int ,int *,int ,int,struct vfio_pci_npu2_data*) ;

int vfio_pci_ibm_npu2_init(struct vfio_pci_device *vdev)
{
 int ret;
 struct vfio_pci_npu2_data *data;
 struct device_node *nvlink_dn;
 u32 nvlink_index = 0;
 struct pci_dev *npdev = vdev->pdev;
 struct device_node *npu_node = pci_device_to_OF_node(npdev);
 struct pci_controller *hose = pci_bus_to_host(npdev->bus);
 u64 mmio_atsd = 0;
 u64 tgt = 0;
 u32 link_speed = 0xff;





 if (!pnv_pci_get_gpu_dev(vdev->pdev))
  return -ENODEV;
 nvlink_dn = of_parse_phandle(npdev->dev.of_node, "ibm,nvlink", 0);
 if (WARN_ON(of_property_read_u32(nvlink_dn, "ibm,npu-link-index",
   &nvlink_index)))
  return -ENODEV;

 if (of_property_read_u64_index(hose->dn, "ibm,mmio-atsd", nvlink_index,
   &mmio_atsd)) {
  dev_warn(&vdev->pdev->dev, "No available ATSD found\n");
  mmio_atsd = 0;
 }

 if (of_property_read_u64(npu_node, "ibm,device-tgt-addr", &tgt)) {
  dev_warn(&vdev->pdev->dev, "No ibm,device-tgt-addr found\n");
  return -EFAULT;
 }

 if (of_property_read_u32(npu_node, "ibm,nvlink-speed", &link_speed)) {
  dev_warn(&vdev->pdev->dev, "No ibm,nvlink-speed found\n");
  return -EFAULT;
 }

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->mmio_atsd = mmio_atsd;
 data->gpu_tgt = tgt;
 data->link_speed = link_speed;
 if (data->mmio_atsd) {
  data->base = memremap(data->mmio_atsd, SZ_64K, MEMREMAP_WT);
  if (!data->base) {
   ret = -ENOMEM;
   goto free_exit;
  }
 }







 ret = vfio_pci_register_dev_region(vdev,
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
  memunmap(data->base);
 kfree(data);

 return ret;
}
