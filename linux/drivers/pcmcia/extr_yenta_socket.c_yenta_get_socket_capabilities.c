
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ irq_mask; int pci_irq; } ;
struct yenta_socket {int cb_irq; TYPE_1__ socket; TYPE_2__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int dev_info (int *,char*,scalar_t__,int ) ;
 scalar_t__ isa_probe ;
 scalar_t__ yenta_probe_irq (struct yenta_socket*,int ) ;

__attribute__((used)) static void yenta_get_socket_capabilities(struct yenta_socket *socket, u32 isa_irq_mask)
{
 socket->socket.pci_irq = socket->cb_irq;
 if (isa_probe)
  socket->socket.irq_mask = yenta_probe_irq(socket, isa_irq_mask);
 else
  socket->socket.irq_mask = 0;

 dev_info(&socket->dev->dev, "ISA IRQ mask 0x%04x, PCI irq %d\n",
   socket->socket.irq_mask, socket->cb_irq);
}
