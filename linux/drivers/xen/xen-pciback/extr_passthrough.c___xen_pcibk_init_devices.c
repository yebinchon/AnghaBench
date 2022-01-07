
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {struct passthrough_dev_data* pci_dev_data; } ;
struct passthrough_dev_data {int dev_list; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct passthrough_dev_data* kmalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int __xen_pcibk_init_devices(struct xen_pcibk_device *pdev)
{
 struct passthrough_dev_data *dev_data;

 dev_data = kmalloc(sizeof(*dev_data), GFP_KERNEL);
 if (!dev_data)
  return -ENOMEM;

 mutex_init(&dev_data->lock);

 INIT_LIST_HEAD(&dev_data->dev_list);

 pdev->pci_dev_data = dev_data;

 return 0;
}
