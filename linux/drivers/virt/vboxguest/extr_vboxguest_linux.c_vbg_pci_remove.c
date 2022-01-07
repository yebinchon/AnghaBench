
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_dev {int misc_device; int misc_device_user; int dev; } ;
struct pci_dev {int dummy; } ;


 int dev_attr_host_features ;
 int dev_attr_host_version ;
 int device_remove_file (int ,int *) ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct vbg_dev* pci_get_drvdata (struct pci_dev*) ;
 int vbg_core_exit (struct vbg_dev*) ;
 int * vbg_gdev ;
 int vbg_gdev_mutex ;

__attribute__((used)) static void vbg_pci_remove(struct pci_dev *pci)
{
 struct vbg_dev *gdev = pci_get_drvdata(pci);

 mutex_lock(&vbg_gdev_mutex);
 vbg_gdev = ((void*)0);
 mutex_unlock(&vbg_gdev_mutex);

 device_remove_file(gdev->dev, &dev_attr_host_features);
 device_remove_file(gdev->dev, &dev_attr_host_version);
 misc_deregister(&gdev->misc_device_user);
 misc_deregister(&gdev->misc_device);
 vbg_core_exit(gdev);
 pci_disable_device(pci);
}
