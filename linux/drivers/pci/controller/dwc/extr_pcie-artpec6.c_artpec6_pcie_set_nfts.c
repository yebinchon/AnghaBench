
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;
struct artpec6_pcie {scalar_t__ variant; struct dw_pcie* pci; } ;


 int ACK_F_ASPM_CTRL_OFF ;
 int ACK_N_FTS (int) ;
 int ACK_N_FTS_MASK ;
 scalar_t__ ARTPEC7 ;
 int FAST_TRAINING_SEQ (int) ;
 int FAST_TRAINING_SEQ_MASK ;
 int PCIE_LINK_WIDTH_SPEED_CONTROL ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int ) ;

__attribute__((used)) static void artpec6_pcie_set_nfts(struct artpec6_pcie *artpec6_pcie)
{
 struct dw_pcie *pci = artpec6_pcie->pci;
 u32 val;

 if (artpec6_pcie->variant != ARTPEC7)
  return;





 val = dw_pcie_readl_dbi(pci, ACK_F_ASPM_CTRL_OFF);
 val &= ~ACK_N_FTS_MASK;
 val |= ACK_N_FTS(180);
 dw_pcie_writel_dbi(pci, ACK_F_ASPM_CTRL_OFF, val);





 val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
 val &= ~FAST_TRAINING_SEQ_MASK;
 val |= FAST_TRAINING_SEQ(180);
 dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
}
