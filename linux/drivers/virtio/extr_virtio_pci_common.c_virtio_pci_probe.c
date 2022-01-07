
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int release; int * parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct virtio_pci_device {TYPE_1__ vdev; scalar_t__ ioaddr; int lock; int virtqueues; struct pci_dev* pci_dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ force_legacy ;
 int kfree (struct virtio_pci_device*) ;
 struct virtio_pci_device* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct virtio_pci_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int put_device (TYPE_2__*) ;
 int register_virtio_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int virtio_pci_legacy_probe (struct virtio_pci_device*) ;
 int virtio_pci_legacy_remove (struct virtio_pci_device*) ;
 int virtio_pci_modern_probe (struct virtio_pci_device*) ;
 int virtio_pci_modern_remove (struct virtio_pci_device*) ;
 int virtio_pci_release_dev ;

__attribute__((used)) static int virtio_pci_probe(struct pci_dev *pci_dev,
       const struct pci_device_id *id)
{
 struct virtio_pci_device *vp_dev, *reg_dev = ((void*)0);
 int rc;


 vp_dev = kzalloc(sizeof(struct virtio_pci_device), GFP_KERNEL);
 if (!vp_dev)
  return -ENOMEM;

 pci_set_drvdata(pci_dev, vp_dev);
 vp_dev->vdev.dev.parent = &pci_dev->dev;
 vp_dev->vdev.dev.release = virtio_pci_release_dev;
 vp_dev->pci_dev = pci_dev;
 INIT_LIST_HEAD(&vp_dev->virtqueues);
 spin_lock_init(&vp_dev->lock);


 rc = pci_enable_device(pci_dev);
 if (rc)
  goto err_enable_device;

 if (force_legacy) {
  rc = virtio_pci_legacy_probe(vp_dev);

  if (rc == -ENODEV || rc == -ENOMEM)
   rc = virtio_pci_modern_probe(vp_dev);
  if (rc)
   goto err_probe;
 } else {
  rc = virtio_pci_modern_probe(vp_dev);
  if (rc == -ENODEV)
   rc = virtio_pci_legacy_probe(vp_dev);
  if (rc)
   goto err_probe;
 }

 pci_set_master(pci_dev);

 rc = register_virtio_device(&vp_dev->vdev);
 reg_dev = vp_dev;
 if (rc)
  goto err_register;

 return 0;

err_register:
 if (vp_dev->ioaddr)
      virtio_pci_legacy_remove(vp_dev);
 else
      virtio_pci_modern_remove(vp_dev);
err_probe:
 pci_disable_device(pci_dev);
err_enable_device:
 if (reg_dev)
  put_device(&vp_dev->vdev.dev);
 else
  kfree(vp_dev);
 return rc;
}
