
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct TYPE_2__ {int socket; } ;


 int enter (char*) ;
 int free_irq (int ,int ) ;
 int i82092aa_interrupt ;
 int leave (char*) ;
 int pcmcia_unregister_socket (int *) ;
 int socket_count ;
 TYPE_1__* sockets ;

__attribute__((used)) static void i82092aa_pci_remove(struct pci_dev *dev)
{
 int i;

 enter("i82092aa_pci_remove");

 free_irq(dev->irq, i82092aa_interrupt);

 for (i = 0; i < socket_count; i++)
  pcmcia_unregister_socket(&sockets[i].socket);

 leave("i82092aa_pci_remove");
}
