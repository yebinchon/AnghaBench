
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dpram; scalar_t__ iobase; int irq; } ;
typedef TYPE_1__ hysdn_card ;


 scalar_t__ PCI9050_INTR_REG ;
 scalar_t__ PCI9050_USER_IO ;
 int ergo_stopcard (TYPE_1__*) ;
 int free_irq (int ,TYPE_1__*) ;
 int iounmap (int *) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
ergo_releasehardware(hysdn_card *card)
{
 ergo_stopcard(card);
 free_irq(card->irq, card);
 release_region(card->iobase + PCI9050_INTR_REG, 1);
 release_region(card->iobase + PCI9050_USER_IO, 1);
 iounmap(card->dpram);
 card->dpram = ((void*)0);
}
