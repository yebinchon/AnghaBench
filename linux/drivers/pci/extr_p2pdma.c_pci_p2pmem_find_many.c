
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INT_MAX ;
 int PAGE_SIZE ;
 int PCI_ANY_ID ;
 int kfree (struct pci_dev**) ;
 struct pci_dev** kmalloc (int,int ) ;
 struct pci_dev* pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_has_p2pmem (struct pci_dev*) ;
 int pci_p2pdma_distance_many (struct pci_dev*,struct device**,int,int) ;
 size_t prandom_u32_max (int) ;

struct pci_dev *pci_p2pmem_find_many(struct device **clients, int num_clients)
{
 struct pci_dev *pdev = ((void*)0);
 int distance;
 int closest_distance = INT_MAX;
 struct pci_dev **closest_pdevs;
 int dev_cnt = 0;
 const int max_devs = PAGE_SIZE / sizeof(*closest_pdevs);
 int i;

 closest_pdevs = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!closest_pdevs)
  return ((void*)0);

 while ((pdev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pdev))) {
  if (!pci_has_p2pmem(pdev))
   continue;

  distance = pci_p2pdma_distance_many(pdev, clients,
          num_clients, 0);
  if (distance < 0 || distance > closest_distance)
   continue;

  if (distance == closest_distance && dev_cnt >= max_devs)
   continue;

  if (distance < closest_distance) {
   for (i = 0; i < dev_cnt; i++)
    pci_dev_put(closest_pdevs[i]);

   dev_cnt = 0;
   closest_distance = distance;
  }

  closest_pdevs[dev_cnt++] = pci_dev_get(pdev);
 }

 if (dev_cnt)
  pdev = pci_dev_get(closest_pdevs[prandom_u32_max(dev_cnt)]);

 for (i = 0; i < dev_cnt; i++)
  pci_dev_put(closest_pdevs[i]);

 kfree(closest_pdevs);
 return pdev;
}
