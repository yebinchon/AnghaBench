
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vme_dev {int dev; } ;
struct TYPE_7__ {int * resource; scalar_t__ pci_buf; int * kern_buf; void* size_buf; int * device; int mutex; } ;
struct TYPE_6__ {int owner; int * ops; } ;



 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int MASTER_MAX ;

 int MKDEV (int ,int) ;
 void* PCI_BUF_SIZE ;
 int PTR_ERR (int *) ;
 int SLAVE_MAX ;

 int THIS_MODULE ;
 int VME_A24 ;
 int VME_A32 ;
 int VME_D32 ;
 int VME_DEVS ;
 int VME_MAJOR ;
 int VME_SCT ;
 int cdev_add (TYPE_1__*,int ,int) ;
 TYPE_1__* cdev_alloc () ;
 int cdev_del (TYPE_1__*) ;
 int * class_create (int ,int ) ;
 int class_destroy (int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 int * device_create (int *,int *,int ,int *,char*,int) ;
 int device_destroy (int *,int ) ;
 int driver_name ;
 TYPE_2__* image ;
 int kfree (int *) ;
 int * kmalloc (void*,int ) ;
 int mutex_init (int *) ;
 int register_chrdev_region (int ,int,int ) ;
 int* type ;
 int unregister_chrdev_region (int ,int) ;
 int * vme_alloc_consistent (int *,void*,scalar_t__*) ;
 int vme_free_consistent (int *,void*,int *,scalar_t__) ;
 int vme_master_free (int *) ;
 int * vme_master_request (struct vme_dev*,int ,int ,int ) ;
 int vme_slave_free (int *) ;
 int * vme_slave_request (struct vme_dev*,int ,int ) ;
 struct vme_dev* vme_user_bridge ;
 TYPE_1__* vme_user_cdev ;
 int vme_user_fops ;
 int * vme_user_sysfs_class ;

__attribute__((used)) static int vme_user_probe(struct vme_dev *vdev)
{
 int i, err;
 char *name;


 if (vme_user_bridge) {
  dev_err(&vdev->dev, "Driver can only be loaded for 1 device\n");
  err = -EINVAL;
  goto err_dev;
 }
 vme_user_bridge = vdev;


 for (i = 0; i < VME_DEVS; i++) {
  image[i].kern_buf = ((void*)0);
  image[i].pci_buf = 0;
  mutex_init(&image[i].mutex);
  image[i].device = ((void*)0);
  image[i].resource = ((void*)0);
 }


 err = register_chrdev_region(MKDEV(VME_MAJOR, 0), VME_DEVS,
         driver_name);
 if (err) {
  dev_warn(&vdev->dev, "Error getting Major Number %d for driver.\n",
    VME_MAJOR);
  goto err_region;
 }


 vme_user_cdev = cdev_alloc();
 if (!vme_user_cdev) {
  err = -ENOMEM;
  goto err_char;
 }
 vme_user_cdev->ops = &vme_user_fops;
 vme_user_cdev->owner = THIS_MODULE;
 err = cdev_add(vme_user_cdev, MKDEV(VME_MAJOR, 0), VME_DEVS);
 if (err)
  goto err_class;


 for (i = 128; i < (SLAVE_MAX + 1); i++) {





  image[i].resource = vme_slave_request(vme_user_bridge,
            VME_A24, VME_SCT);
  if (!image[i].resource) {
   dev_warn(&vdev->dev,
     "Unable to allocate slave resource\n");
   err = -ENOMEM;
   goto err_slave;
  }
  image[i].size_buf = PCI_BUF_SIZE;
  image[i].kern_buf = vme_alloc_consistent(image[i].resource,
        image[i].size_buf,
        &image[i].pci_buf);
  if (!image[i].kern_buf) {
   dev_warn(&vdev->dev,
     "Unable to allocate memory for buffer\n");
   image[i].pci_buf = 0;
   vme_slave_free(image[i].resource);
   err = -ENOMEM;
   goto err_slave;
  }
 }





 for (i = 129; i < (MASTER_MAX + 1); i++) {

  image[i].resource = vme_master_request(vme_user_bridge,
             VME_A32, VME_SCT,
             VME_D32);
  if (!image[i].resource) {
   dev_warn(&vdev->dev,
     "Unable to allocate master resource\n");
   err = -ENOMEM;
   goto err_master;
  }
  image[i].size_buf = PCI_BUF_SIZE;
  image[i].kern_buf = kmalloc(image[i].size_buf, GFP_KERNEL);
  if (!image[i].kern_buf) {
   err = -ENOMEM;
   vme_master_free(image[i].resource);
   goto err_master;
  }
 }


 vme_user_sysfs_class = class_create(THIS_MODULE, driver_name);
 if (IS_ERR(vme_user_sysfs_class)) {
  dev_err(&vdev->dev, "Error creating vme_user class.\n");
  err = PTR_ERR(vme_user_sysfs_class);
  goto err_master;
 }


 for (i = 0; i < VME_DEVS; i++) {
  int num;

  switch (type[i]) {
  case 129:
   name = "bus/vme/m%d";
   break;
  case 130:
   name = "bus/vme/ctl";
   break;
  case 128:
   name = "bus/vme/s%d";
   break;
  default:
   err = -EINVAL;
   goto err_sysfs;
  }

  num = (type[i] == 128) ? i - (MASTER_MAX + 1) : i;
  image[i].device = device_create(vme_user_sysfs_class, ((void*)0),
      MKDEV(VME_MAJOR, i), ((void*)0),
      name, num);
  if (IS_ERR(image[i].device)) {
   dev_info(&vdev->dev, "Error creating sysfs device\n");
   err = PTR_ERR(image[i].device);
   goto err_sysfs;
  }
 }

 return 0;

err_sysfs:
 while (i > 0) {
  i--;
  device_destroy(vme_user_sysfs_class, MKDEV(VME_MAJOR, i));
 }
 class_destroy(vme_user_sysfs_class);


 i = MASTER_MAX + 1;
err_master:
 while (i > 129) {
  i--;
  kfree(image[i].kern_buf);
  vme_master_free(image[i].resource);
 }




 i = SLAVE_MAX + 1;
err_slave:
 while (i > 128) {
  i--;
  vme_free_consistent(image[i].resource, image[i].size_buf,
        image[i].kern_buf, image[i].pci_buf);
  vme_slave_free(image[i].resource);
 }
err_class:
 cdev_del(vme_user_cdev);
err_char:
 unregister_chrdev_region(MKDEV(VME_MAJOR, 0), VME_DEVS);
err_region:
err_dev:
 return err;
}
