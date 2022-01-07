
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vector; } ;
struct bfad_s {int bfad_flags; int nvec; TYPE_2__* pcidev; struct bfad_s* msix_tab; TYPE_1__ msix; } ;
struct TYPE_4__ {int irq; } ;


 int BFAD_INTX_ON ;
 int BFAD_MSIX_ON ;
 int free_irq (int ,struct bfad_s*) ;
 int pci_disable_msix (TYPE_2__*) ;

void
bfad_remove_intr(struct bfad_s *bfad)
{
 int i;

 if (bfad->bfad_flags & BFAD_MSIX_ON) {
  for (i = 0; i < bfad->nvec; i++)
   free_irq(bfad->msix_tab[i].msix.vector,
     &bfad->msix_tab[i]);

  pci_disable_msix(bfad->pcidev);
  bfad->bfad_flags &= ~BFAD_MSIX_ON;
 } else if (bfad->bfad_flags & BFAD_INTX_ON) {
  free_irq(bfad->pcidev->irq, bfad);
 }
}
