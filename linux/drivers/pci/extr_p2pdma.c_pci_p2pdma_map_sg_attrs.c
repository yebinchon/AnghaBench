
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct pci_p2pdma_pagemap {int provider; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int pgmap; } ;




 scalar_t__ WARN_ON_ONCE (int) ;
 int __pci_p2pdma_map_sg (struct pci_p2pdma_pagemap*,struct device*,struct scatterlist*,int) ;
 int dev_is_pci (struct device*) ;
 int dma_map_sg_attrs (struct device*,struct scatterlist*,int,int,unsigned long) ;
 int pci_p2pdma_map_type (int ,struct pci_dev*) ;
 TYPE_1__* sg_page (struct scatterlist*) ;
 struct pci_p2pdma_pagemap* to_p2p_pgmap (int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
  int nents, enum dma_data_direction dir, unsigned long attrs)
{
 struct pci_p2pdma_pagemap *p2p_pgmap =
  to_p2p_pgmap(sg_page(sg)->pgmap);
 struct pci_dev *client;

 if (WARN_ON_ONCE(!dev_is_pci(dev)))
  return 0;

 client = to_pci_dev(dev);

 switch (pci_p2pdma_map_type(p2p_pgmap->provider, client)) {
 case 128:
  return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
 case 129:
  return __pci_p2pdma_map_sg(p2p_pgmap, dev, sg, nents);
 default:
  WARN_ON_ONCE(1);
  return 0;
 }
}
