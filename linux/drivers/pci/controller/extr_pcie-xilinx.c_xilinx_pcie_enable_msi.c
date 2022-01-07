
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {scalar_t__ msi_pages; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XILINX_PCIE_REG_MSIBASE1 ;
 int XILINX_PCIE_REG_MSIBASE2 ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int pcie_write (struct xilinx_pcie_port*,int,int ) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int xilinx_pcie_enable_msi(struct xilinx_pcie_port *port)
{
 phys_addr_t msg_addr;

 port->msi_pages = __get_free_pages(GFP_KERNEL, 0);
 if (!port->msi_pages)
  return -ENOMEM;

 msg_addr = virt_to_phys((void *)port->msi_pages);
 pcie_write(port, 0x0, XILINX_PCIE_REG_MSIBASE1);
 pcie_write(port, msg_addr, XILINX_PCIE_REG_MSIBASE2);

 return 0;
}
