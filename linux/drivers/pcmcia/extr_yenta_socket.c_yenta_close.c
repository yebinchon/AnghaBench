
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yenta_socket {int base; int poll_timer; scalar_t__ cb_irq; int socket; } ;
struct pci_dev {int dev; } ;


 int CB_SOCKET_MASK ;
 int I365_CSCINT ;
 int cb_writel (struct yenta_socket*,int ,int) ;
 int del_timer_sync (int *) ;
 int dev_attr_yenta_registers ;
 int device_remove_file (int *,int *) ;
 int exca_writeb (struct yenta_socket*,int ,int ) ;
 int free_irq (scalar_t__,struct yenta_socket*) ;
 int iounmap (int ) ;
 int kfree (struct yenta_socket*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct yenta_socket* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pcmcia_unregister_socket (int *) ;
 int yenta_free_resources (struct yenta_socket*) ;

__attribute__((used)) static void yenta_close(struct pci_dev *dev)
{
 struct yenta_socket *sock = pci_get_drvdata(dev);


 device_remove_file(&dev->dev, &dev_attr_yenta_registers);


 pcmcia_unregister_socket(&sock->socket);


 cb_writel(sock, CB_SOCKET_MASK, 0x0);
 exca_writeb(sock, I365_CSCINT, 0);

 if (sock->cb_irq)
  free_irq(sock->cb_irq, sock);
 else
  del_timer_sync(&sock->poll_timer);

 iounmap(sock->base);
 yenta_free_resources(sock);

 pci_release_regions(dev);
 pci_disable_device(dev);
 pci_set_drvdata(dev, ((void*)0));
 kfree(sock);
}
