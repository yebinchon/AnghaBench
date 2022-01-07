
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vme_dev {int dummy; } ;
struct TYPE_2__ {int resource; int pci_buf; int kern_buf; int size_buf; int mutex; } ;


 int MASTER_MAX ;
 int MASTER_MINOR ;
 int MKDEV (int ,int) ;
 int SLAVE_MAX ;
 int SLAVE_MINOR ;
 int VME_A32 ;
 int VME_DEVS ;
 int VME_MAJOR ;
 int cdev_del (int ) ;
 int class_destroy (int ) ;
 int device_destroy (int ,int ) ;
 TYPE_1__* image ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int unregister_chrdev_region (int ,int) ;
 int vme_free_consistent (int ,int ,int ,int ) ;
 int vme_master_free (int ) ;
 int vme_slave_free (int ) ;
 int vme_slave_set (int ,int ,int ,int ,int ,int ,int ) ;
 int vme_user_cdev ;
 int vme_user_sysfs_class ;

__attribute__((used)) static int vme_user_remove(struct vme_dev *dev)
{
 int i;


 for (i = 0; i < VME_DEVS; i++) {
  mutex_destroy(&image[i].mutex);
  device_destroy(vme_user_sysfs_class, MKDEV(VME_MAJOR, i));
 }
 class_destroy(vme_user_sysfs_class);

 for (i = MASTER_MINOR; i < (MASTER_MAX + 1); i++) {
  kfree(image[i].kern_buf);
  vme_master_free(image[i].resource);
 }

 for (i = SLAVE_MINOR; i < (SLAVE_MAX + 1); i++) {
  vme_slave_set(image[i].resource, 0, 0, 0, 0, VME_A32, 0);
  vme_free_consistent(image[i].resource, image[i].size_buf,
        image[i].kern_buf, image[i].pci_buf);
  vme_slave_free(image[i].resource);
 }


 cdev_del(vme_user_cdev);


 unregister_chrdev_region(MKDEV(VME_MAJOR, 0), VME_DEVS);

 return 0;
}
