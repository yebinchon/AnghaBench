
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcistub_device {int lock; int kref; int dev; } ;
struct pci_dev {int dev; } ;


 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 int kfree (struct pcistub_device*) ;
 int kref_init (int *) ;
 struct pcistub_device* kzalloc (int,int ) ;
 int pci_dev_get (struct pci_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct pcistub_device *pcistub_device_alloc(struct pci_dev *dev)
{
 struct pcistub_device *psdev;

 dev_dbg(&dev->dev, "pcistub_device_alloc\n");

 psdev = kzalloc(sizeof(*psdev), GFP_KERNEL);
 if (!psdev)
  return ((void*)0);

 psdev->dev = pci_dev_get(dev);
 if (!psdev->dev) {
  kfree(psdev);
  return ((void*)0);
 }

 kref_init(&psdev->kref);
 spin_lock_init(&psdev->lock);

 return psdev;
}
