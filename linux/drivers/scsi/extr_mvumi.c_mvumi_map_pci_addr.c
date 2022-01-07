
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 int MAX_BASE_ADDRESS ;
 int dev_dbg (int *,char*,int,void*) ;
 int dev_err (int *,char*,int) ;
 int mvumi_unmap_pci_addr (struct pci_dev*,void**) ;
 void* pci_iomap (struct pci_dev*,int,int ) ;
 int pci_resource_flags (struct pci_dev*,int) ;

__attribute__((used)) static int mvumi_map_pci_addr(struct pci_dev *dev, void **addr_array)
{
 int i;

 for (i = 0; i < MAX_BASE_ADDRESS; i++) {
  if (pci_resource_flags(dev, i) & IORESOURCE_MEM) {
   addr_array[i] = pci_iomap(dev, i, 0);
   if (!addr_array[i]) {
    dev_err(&dev->dev, "failed to map Bar[%d]\n",
         i);
    mvumi_unmap_pci_addr(dev, addr_array);
    return -ENOMEM;
   }
  } else
   addr_array[i] = ((void*)0);

  dev_dbg(&dev->dev, "Bar %d : %p.\n", i, addr_array[i]);
 }

 return 0;
}
