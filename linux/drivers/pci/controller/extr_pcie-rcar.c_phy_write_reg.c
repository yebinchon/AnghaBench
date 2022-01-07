
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pcie {int dummy; } ;


 int ADR_POS ;
 int H1_PCIEPHYADRR ;
 int H1_PCIEPHYDOUTR ;
 unsigned int LANE_POS ;
 unsigned int RATE_POS ;
 unsigned int WRITE_CMD ;
 int phy_wait_for_ack (struct rcar_pcie*) ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;

__attribute__((used)) static void phy_write_reg(struct rcar_pcie *pcie,
     unsigned int rate, u32 addr,
     unsigned int lane, u32 data)
{
 u32 phyaddr;

 phyaddr = WRITE_CMD |
  ((rate & 1) << RATE_POS) |
  ((lane & 0xf) << LANE_POS) |
  ((addr & 0xff) << ADR_POS);


 rcar_pci_write_reg(pcie, data, H1_PCIEPHYDOUTR);
 rcar_pci_write_reg(pcie, phyaddr, H1_PCIEPHYADRR);


 phy_wait_for_ack(pcie);


 rcar_pci_write_reg(pcie, 0, H1_PCIEPHYDOUTR);
 rcar_pci_write_reg(pcie, 0, H1_PCIEPHYADRR);


 phy_wait_for_ack(pcie);
}
