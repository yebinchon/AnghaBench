
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* next; int (* releasehardware ) (TYPE_1__*) ;int (* stopcard ) (TYPE_1__*) ;} ;
typedef TYPE_1__ hysdn_card ;


 TYPE_1__* card_last ;
 TYPE_1__* card_root ;
 int hycapi_capi_release (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 int pci_disable_device (struct pci_dev*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void hysdn_pci_remove_one(struct pci_dev *akt_pcidev)
{
 hysdn_card *card = pci_get_drvdata(akt_pcidev);

 pci_set_drvdata(akt_pcidev, ((void*)0));

 if (card->stopcard)
  card->stopcard(card);





 if (card->releasehardware)
  card->releasehardware(card);

 if (card == card_root) {
  card_root = card_root->next;
  if (!card_root)
   card_last = ((void*)0);
 } else {
  hysdn_card *tmp = card_root;
  while (tmp) {
   if (tmp->next == card)
    tmp->next = card->next;
   card_last = tmp;
   tmp = tmp->next;
  }
 }

 kfree(card);
 pci_disable_device(akt_pcidev);
}
