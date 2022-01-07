
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yenta_socket {TYPE_1__* dev; } ;
struct TYPE_2__ {int subordinate; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int IORESOURCE_PREFETCH ;
 int PCI_CB_IO_BASE_0 ;
 int PCI_CB_IO_BASE_1 ;
 int PCI_CB_IO_LIMIT_0 ;
 int PCI_CB_IO_LIMIT_1 ;
 int PCI_CB_MEMORY_BASE_0 ;
 int PCI_CB_MEMORY_BASE_1 ;
 int PCI_CB_MEMORY_LIMIT_0 ;
 int PCI_CB_MEMORY_LIMIT_1 ;
 int pci_setup_cardbus (int ) ;
 scalar_t__ yenta_allocate_res (struct yenta_socket*,int,int,int ,int ) ;

__attribute__((used)) static void yenta_allocate_resources(struct yenta_socket *socket)
{
 int program = 0;
 program += yenta_allocate_res(socket, 0, IORESOURCE_IO,
      PCI_CB_IO_BASE_0, PCI_CB_IO_LIMIT_0);
 program += yenta_allocate_res(socket, 1, IORESOURCE_IO,
      PCI_CB_IO_BASE_1, PCI_CB_IO_LIMIT_1);
 program += yenta_allocate_res(socket, 2, IORESOURCE_MEM|IORESOURCE_PREFETCH,
      PCI_CB_MEMORY_BASE_0, PCI_CB_MEMORY_LIMIT_0);
 program += yenta_allocate_res(socket, 3, IORESOURCE_MEM,
      PCI_CB_MEMORY_BASE_1, PCI_CB_MEMORY_LIMIT_1);
 if (program)
  pci_setup_cardbus(socket->dev->subordinate);
}
