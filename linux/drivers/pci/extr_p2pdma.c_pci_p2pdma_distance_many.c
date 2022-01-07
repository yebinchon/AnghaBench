
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {int * dma_ops; } ;


 int CONFIG_DMA_VIRT_OPS ;
 scalar_t__ IS_ENABLED (int ) ;
 int PCI_P2PDMA_MAP_NOT_SUPPORTED ;
 int dev_warn (struct device*,char*) ;
 int dma_virt_ops ;
 struct pci_dev* find_parent_pci_dev (struct device*) ;
 int pci_dev_put (struct pci_dev*) ;
 int upstream_bridge_distance (struct pci_dev*,struct pci_dev*,int*,int *,int *) ;
 int upstream_bridge_distance_warn (struct pci_dev*,struct pci_dev*,int*) ;

int pci_p2pdma_distance_many(struct pci_dev *provider, struct device **clients,
        int num_clients, bool verbose)
{
 bool not_supported = 0;
 struct pci_dev *pci_client;
 int total_dist = 0;
 int distance;
 int i, ret;

 if (num_clients == 0)
  return -1;

 for (i = 0; i < num_clients; i++) {
  if (IS_ENABLED(CONFIG_DMA_VIRT_OPS) &&
      clients[i]->dma_ops == &dma_virt_ops) {
   if (verbose)
    dev_warn(clients[i],
      "cannot be used for peer-to-peer DMA because the driver makes use of dma_virt_ops\n");
   return -1;
  }

  pci_client = find_parent_pci_dev(clients[i]);
  if (!pci_client) {
   if (verbose)
    dev_warn(clients[i],
      "cannot be used for peer-to-peer DMA as it is not a PCI device\n");
   return -1;
  }

  if (verbose)
   ret = upstream_bridge_distance_warn(provider,
     pci_client, &distance);
  else
   ret = upstream_bridge_distance(provider, pci_client,
             &distance, ((void*)0), ((void*)0));

  pci_dev_put(pci_client);

  if (ret == PCI_P2PDMA_MAP_NOT_SUPPORTED)
   not_supported = 1;

  if (not_supported && !verbose)
   break;

  total_dist += distance;
 }

 if (not_supported)
  return -1;

 return total_dist;
}
