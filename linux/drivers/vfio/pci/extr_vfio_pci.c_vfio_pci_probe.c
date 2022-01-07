
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int ioeventfds_list; int ioeventfds_lock; int irqlock; int igate; int irq_type; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ hdr_type; int dev; } ;
struct iommu_group {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PCI_D0 ;
 int PCI_D3hot ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;
 int VFIO_PCI_NUM_IRQS ;
 int disable_idle_d3 ;
 int kfree (struct vfio_pci_device*) ;
 struct vfio_pci_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ pci_num_vf (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int spin_lock_init (int *) ;
 int vfio_add_group_dev (int *,int *,struct vfio_pci_device*) ;
 int vfio_del_group_dev (int *) ;
 struct iommu_group* vfio_iommu_group_get (int *) ;
 int vfio_iommu_group_put (struct iommu_group*,int *) ;
 scalar_t__ vfio_pci_is_vga (struct pci_dev*) ;
 int vfio_pci_ops ;
 int vfio_pci_probe_power_state (struct vfio_pci_device*) ;
 int vfio_pci_reflck_attach (struct vfio_pci_device*) ;
 int vfio_pci_set_power_state (struct vfio_pci_device*,int ) ;
 int vfio_pci_set_vga_decode (struct vfio_pci_device*,int) ;
 int vga_client_register (struct pci_dev*,struct vfio_pci_device*,int *,int (*) (struct vfio_pci_device*,int)) ;
 int vga_set_legacy_decoding (struct pci_dev*,int ) ;

__attribute__((used)) static int vfio_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct vfio_pci_device *vdev;
 struct iommu_group *group;
 int ret;

 if (pdev->hdr_type != PCI_HEADER_TYPE_NORMAL)
  return -EINVAL;
 if (pci_num_vf(pdev)) {
  pci_warn(pdev, "Cannot bind to PF with SR-IOV enabled\n");
  return -EBUSY;
 }

 group = vfio_iommu_group_get(&pdev->dev);
 if (!group)
  return -EINVAL;

 vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
 if (!vdev) {
  vfio_iommu_group_put(group, &pdev->dev);
  return -ENOMEM;
 }

 vdev->pdev = pdev;
 vdev->irq_type = VFIO_PCI_NUM_IRQS;
 mutex_init(&vdev->igate);
 spin_lock_init(&vdev->irqlock);
 mutex_init(&vdev->ioeventfds_lock);
 INIT_LIST_HEAD(&vdev->ioeventfds_list);

 ret = vfio_add_group_dev(&pdev->dev, &vfio_pci_ops, vdev);
 if (ret) {
  vfio_iommu_group_put(group, &pdev->dev);
  kfree(vdev);
  return ret;
 }

 ret = vfio_pci_reflck_attach(vdev);
 if (ret) {
  vfio_del_group_dev(&pdev->dev);
  vfio_iommu_group_put(group, &pdev->dev);
  kfree(vdev);
  return ret;
 }

 if (vfio_pci_is_vga(pdev)) {
  vga_client_register(pdev, vdev, ((void*)0), vfio_pci_set_vga_decode);
  vga_set_legacy_decoding(pdev,
     vfio_pci_set_vga_decode(vdev, 0));
 }

 vfio_pci_probe_power_state(vdev);

 if (!disable_idle_d3) {
  vfio_pci_set_power_state(vdev, PCI_D0);
  vfio_pci_set_power_state(vdev, PCI_D3hot);
 }

 return ret;
}
