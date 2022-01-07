
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ramaddr; scalar_t__ ioaddr; int host; } ;
struct sym_hcb {TYPE_1__ s; } ;
struct pci_dev {int irq; } ;


 int free_irq (int ,int ) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int sym_hcb_free (struct sym_hcb*) ;
 int sym_mfree_dma (struct sym_hcb*,int,char*) ;

__attribute__((used)) static void sym_free_resources(struct sym_hcb *np, struct pci_dev *pdev,
  int do_free_irq)
{



 if (do_free_irq)
  free_irq(pdev->irq, np->s.host);
 if (np->s.ioaddr)
  pci_iounmap(pdev, np->s.ioaddr);
 if (np->s.ramaddr)
  pci_iounmap(pdev, np->s.ramaddr);



 sym_hcb_free(np);

 sym_mfree_dma(np, sizeof(*np), "HCB");
}
