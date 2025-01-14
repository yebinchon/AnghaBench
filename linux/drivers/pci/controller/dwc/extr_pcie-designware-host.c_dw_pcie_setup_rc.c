
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct pcie_port {size_t num_vectors; size_t* irq_mask; int io_size; int io_bus_addr; int io_base; int mem_size; int mem_bus_addr; int mem_base; TYPE_1__* ops; } ;
struct dw_pcie {int num_viewport; } ;
struct TYPE_2__ {int rd_other_conf; int msi_host_init; } ;


 size_t MAX_MSI_IRQS_PER_CTRL ;
 size_t MSI_REG_CTRL_BLOCK_SIZE ;
 int PCIE_ATU_REGION_INDEX0 ;
 int PCIE_ATU_REGION_INDEX2 ;
 int PCIE_ATU_TYPE_IO ;
 int PCIE_ATU_TYPE_MEM ;
 scalar_t__ PCIE_LINK_WIDTH_SPEED_CONTROL ;
 scalar_t__ PCIE_MSI_INTR0_ENABLE ;
 scalar_t__ PCIE_MSI_INTR0_MASK ;
 scalar_t__ PCI_BASE_ADDRESS_0 ;
 scalar_t__ PCI_BASE_ADDRESS_1 ;
 size_t PCI_CLASS_BRIDGE_PCI ;
 scalar_t__ PCI_CLASS_DEVICE ;
 scalar_t__ PCI_COMMAND ;
 size_t PCI_COMMAND_IO ;
 size_t PCI_COMMAND_MASTER ;
 size_t PCI_COMMAND_MEMORY ;
 size_t PCI_COMMAND_SERR ;
 scalar_t__ PCI_INTERRUPT_LINE ;
 scalar_t__ PCI_PRIMARY_BUS ;
 size_t PORT_LOGIC_SPEED_CHANGE ;
 int dw_pcie_dbi_ro_wr_dis (struct dw_pcie*) ;
 int dw_pcie_dbi_ro_wr_en (struct dw_pcie*) ;
 int dw_pcie_prog_outbound_atu (struct dw_pcie*,int ,int ,int ,int ,int ) ;
 int dw_pcie_rd_own_conf (struct pcie_port*,scalar_t__,int,size_t*) ;
 size_t dw_pcie_readl_dbi (struct dw_pcie*,scalar_t__) ;
 int dw_pcie_setup (struct dw_pcie*) ;
 int dw_pcie_wr_own_conf (struct pcie_port*,scalar_t__,int,size_t) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,scalar_t__,size_t) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

void dw_pcie_setup_rc(struct pcie_port *pp)
{
 u32 val, ctrl, num_ctrls;
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);





 dw_pcie_dbi_ro_wr_en(pci);

 dw_pcie_setup(pci);

 if (!pp->ops->msi_host_init) {
  num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;


  for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
   pp->irq_mask[ctrl] = ~0;
   dw_pcie_wr_own_conf(pp, PCIE_MSI_INTR0_MASK +
         (ctrl * MSI_REG_CTRL_BLOCK_SIZE),
         4, pp->irq_mask[ctrl]);
   dw_pcie_wr_own_conf(pp, PCIE_MSI_INTR0_ENABLE +
         (ctrl * MSI_REG_CTRL_BLOCK_SIZE),
         4, ~0);
  }
 }


 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);


 val = dw_pcie_readl_dbi(pci, PCI_INTERRUPT_LINE);
 val &= 0xffff00ff;
 val |= 0x00000100;
 dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);


 val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
 val &= 0xff000000;
 val |= 0x00ff0100;
 dw_pcie_writel_dbi(pci, PCI_PRIMARY_BUS, val);


 val = dw_pcie_readl_dbi(pci, PCI_COMMAND);
 val &= 0xffff0000;
 val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
  PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
 dw_pcie_writel_dbi(pci, PCI_COMMAND, val);






 if (!pp->ops->rd_other_conf) {
  dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
       PCIE_ATU_TYPE_MEM, pp->mem_base,
       pp->mem_bus_addr, pp->mem_size);
  if (pci->num_viewport > 2)
   dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX2,
        PCIE_ATU_TYPE_IO, pp->io_base,
        pp->io_bus_addr, pp->io_size);
 }

 dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);


 dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);

 dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
 val |= PORT_LOGIC_SPEED_CHANGE;
 dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);

 dw_pcie_dbi_ro_wr_dis(pci);
}
