
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_buf {int dummy; } ;
struct pci_dev {TYPE_1__* p2pdma; } ;
typedef enum pci_p2pdma_map_type { ____Placeholder_pci_p2pdma_map_type } pci_p2pdma_map_type ;
struct TYPE_2__ {int map_types; } ;


 int GFP_KERNEL ;
 int PCI_P2PDMA_MAP_NOT_SUPPORTED ;
 int PCI_P2PDMA_MAP_THRU_HOST_BRIDGE ;
 int __upstream_bridge_distance (struct pci_dev*,struct pci_dev*,int*,int*,struct seq_buf*) ;
 int host_bridge_whitelist (struct pci_dev*,struct pci_dev*) ;
 int map_types_idx (struct pci_dev*) ;
 int xa_mk_value (int) ;
 int xa_store (int *,int ,int ,int ) ;

__attribute__((used)) static enum pci_p2pdma_map_type
upstream_bridge_distance(struct pci_dev *provider, struct pci_dev *client,
  int *dist, bool *acs_redirects, struct seq_buf *acs_list)
{
 enum pci_p2pdma_map_type map_type;

 map_type = __upstream_bridge_distance(provider, client, dist,
           acs_redirects, acs_list);

 if (map_type == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE) {
  if (!host_bridge_whitelist(provider, client))
   map_type = PCI_P2PDMA_MAP_NOT_SUPPORTED;
 }

 if (provider->p2pdma)
  xa_store(&provider->p2pdma->map_types, map_types_idx(client),
    xa_mk_value(map_type), GFP_KERNEL);

 return map_type;
}
