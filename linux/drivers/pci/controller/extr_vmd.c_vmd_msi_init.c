
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmd_irq {unsigned int virq; int irq; int node; } ;
struct vmd_dev {int dev; } ;
struct msi_domain_info {int chip; } ;
struct msi_desc {int dummy; } ;
struct irq_domain {int dummy; } ;
struct TYPE_4__ {struct msi_desc* desc; } ;
typedef TYPE_1__ msi_alloc_info_t ;
typedef int irq_hw_number_t ;
struct TYPE_5__ {int bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int handle_untracked_irq ;
 unsigned int index_from_irqs (struct vmd_dev*,int ) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,unsigned int,int ,struct vmd_irq*,int ,struct vmd_dev*,int *) ;
 struct vmd_irq* kzalloc (int,int ) ;
 TYPE_3__* msi_desc_to_pci_dev (struct msi_desc*) ;
 unsigned int pci_irq_vector (int ,unsigned int) ;
 struct vmd_dev* vmd_from_bus (int ) ;
 int vmd_next_irq (struct vmd_dev*,struct msi_desc*) ;

__attribute__((used)) static int vmd_msi_init(struct irq_domain *domain, struct msi_domain_info *info,
   unsigned int virq, irq_hw_number_t hwirq,
   msi_alloc_info_t *arg)
{
 struct msi_desc *desc = arg->desc;
 struct vmd_dev *vmd = vmd_from_bus(msi_desc_to_pci_dev(desc)->bus);
 struct vmd_irq *vmdirq = kzalloc(sizeof(*vmdirq), GFP_KERNEL);
 unsigned int index, vector;

 if (!vmdirq)
  return -ENOMEM;

 INIT_LIST_HEAD(&vmdirq->node);
 vmdirq->irq = vmd_next_irq(vmd, desc);
 vmdirq->virq = virq;
 index = index_from_irqs(vmd, vmdirq->irq);
 vector = pci_irq_vector(vmd->dev, index);

 irq_domain_set_info(domain, virq, vector, info->chip, vmdirq,
       handle_untracked_irq, vmd, ((void*)0));
 return 0;
}
