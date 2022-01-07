
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd6729_socket {int poll_timer; int socket; } ;
struct pci_dev {int irq; } ;


 int I365_CSCINT ;
 int I365_INTCTL ;
 int MAX_SOCKETS ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct pd6729_socket*) ;
 int indirect_write (struct pd6729_socket*,int ,int ) ;
 int irq_mode ;
 int kfree (struct pd6729_socket*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pd6729_socket* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pcmcia_unregister_socket (int *) ;

__attribute__((used)) static void pd6729_pci_remove(struct pci_dev *dev)
{
 int i;
 struct pd6729_socket *socket = pci_get_drvdata(dev);

 for (i = 0; i < MAX_SOCKETS; i++) {

  indirect_write(&socket[i], I365_CSCINT, 0);
  indirect_write(&socket[i], I365_INTCTL, 0);

  pcmcia_unregister_socket(&socket[i].socket);
 }

 if (irq_mode == 1)
  free_irq(dev->irq, socket);
 else
  del_timer_sync(&socket->poll_timer);
 pci_release_regions(dev);
 pci_disable_device(dev);

 kfree(socket);
}
