
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int capi_ctrl; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_8__ {size_t nr_controllers; int dma; int port; int mbase; int irq; TYPE_1__* ctrlinfo; } ;
typedef TYPE_2__ avmcard ;


 int AVMB1_PORTLEN ;
 int avmcard_dma_free (int ) ;
 int b1_free_card (TYPE_2__*) ;
 int c4_reset (TYPE_2__*) ;
 int detach_capi_ctr (int *) ;
 int free_irq (int ,TYPE_2__*) ;
 int iounmap (int ) ;
 TYPE_2__* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void c4_remove(struct pci_dev *pdev)
{
 avmcard *card = pci_get_drvdata(pdev);
 avmctrl_info *cinfo;
 u_int i;

 if (!card)
  return;

 c4_reset(card);

 for (i = 0; i < card->nr_controllers; i++) {
  cinfo = &card->ctrlinfo[i];
  detach_capi_ctr(&cinfo->capi_ctrl);
 }

 free_irq(card->irq, card);
 iounmap(card->mbase);
 release_region(card->port, AVMB1_PORTLEN);
 avmcard_dma_free(card->dma);
 pci_set_drvdata(pdev, ((void*)0));
 b1_free_card(card);
}
