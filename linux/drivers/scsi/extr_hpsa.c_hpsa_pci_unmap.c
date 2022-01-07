
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct CommandList {TYPE_1__* SG; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int Len; int Addr; } ;


 int dma_unmap_single (int *,int ,int ,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void hpsa_pci_unmap(struct pci_dev *pdev, struct CommandList *c,
  int sg_used, enum dma_data_direction data_direction)
{
 int i;

 for (i = 0; i < sg_used; i++)
  dma_unmap_single(&pdev->dev, le64_to_cpu(c->SG[i].Addr),
    le32_to_cpu(c->SG[i].Len),
    data_direction);
}
