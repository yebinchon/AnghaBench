
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_6__ {int reset_work; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;


 int NVME_CTRL_DEAD ;
 int NVME_CTRL_DELETING ;
 int flush_work (int *) ;
 int nvme_change_ctrl_state (TYPE_1__*,int ) ;
 int nvme_dev_disable (struct nvme_dev*,int) ;
 int nvme_dev_remove_admin (struct nvme_dev*) ;
 int nvme_dev_unmap (struct nvme_dev*) ;
 int nvme_free_host_mem (struct nvme_dev*) ;
 int nvme_free_queues (struct nvme_dev*,int ) ;
 int nvme_put_ctrl (TYPE_1__*) ;
 int nvme_release_cmb (struct nvme_dev*) ;
 int nvme_release_prp_pools (struct nvme_dev*) ;
 int nvme_remove_namespaces (TYPE_1__*) ;
 int nvme_stop_ctrl (TYPE_1__*) ;
 int nvme_uninit_ctrl (TYPE_1__*) ;
 int pci_device_is_present (struct pci_dev*) ;
 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void nvme_remove(struct pci_dev *pdev)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);

 nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
 pci_set_drvdata(pdev, ((void*)0));

 if (!pci_device_is_present(pdev)) {
  nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DEAD);
  nvme_dev_disable(dev, 1);
  nvme_dev_remove_admin(dev);
 }

 flush_work(&dev->ctrl.reset_work);
 nvme_stop_ctrl(&dev->ctrl);
 nvme_remove_namespaces(&dev->ctrl);
 nvme_dev_disable(dev, 1);
 nvme_release_cmb(dev);
 nvme_free_host_mem(dev);
 nvme_dev_remove_admin(dev);
 nvme_free_queues(dev, 0);
 nvme_uninit_ctrl(&dev->ctrl);
 nvme_release_prp_pools(dev);
 nvme_dev_unmap(dev);
 nvme_put_ctrl(&dev->ctrl);
}
