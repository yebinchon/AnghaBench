
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dev; } ;
struct armada8k_pcie {struct dw_pcie* pci; } ;


 int ARCACHE_DEFAULT_VALUE ;
 int AWCACHE_DEFAULT_VALUE ;
 int AX_USER_DOMAIN_MASK ;
 int AX_USER_DOMAIN_SHIFT ;
 int DOMAIN_OUTER_SHAREABLE ;
 int PCIE_APP_LTSSM_EN ;
 int PCIE_ARCACHE_TRC_REG ;
 int PCIE_ARUSER_REG ;
 int PCIE_AWCACHE_TRC_REG ;
 int PCIE_AWUSER_REG ;
 int PCIE_DEVICE_TYPE_MASK ;
 int PCIE_DEVICE_TYPE_RC ;
 int PCIE_DEVICE_TYPE_SHIFT ;
 int PCIE_GLOBAL_CONTROL_REG ;
 int PCIE_GLOBAL_INT_MASK1_REG ;
 int PCIE_INT_A_ASSERT_MASK ;
 int PCIE_INT_B_ASSERT_MASK ;
 int PCIE_INT_C_ASSERT_MASK ;
 int PCIE_INT_D_ASSERT_MASK ;
 int dev_err (int ,char*) ;
 int dw_pcie_link_up (struct dw_pcie*) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 scalar_t__ dw_pcie_wait_for_link (struct dw_pcie*) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;

__attribute__((used)) static void armada8k_pcie_establish_link(struct armada8k_pcie *pcie)
{
 struct dw_pcie *pci = pcie->pci;
 u32 reg;

 if (!dw_pcie_link_up(pci)) {

  reg = dw_pcie_readl_dbi(pci, PCIE_GLOBAL_CONTROL_REG);
  reg &= ~(PCIE_APP_LTSSM_EN);
  dw_pcie_writel_dbi(pci, PCIE_GLOBAL_CONTROL_REG, reg);
 }


 reg = dw_pcie_readl_dbi(pci, PCIE_GLOBAL_CONTROL_REG);
 reg &= ~(PCIE_DEVICE_TYPE_MASK << PCIE_DEVICE_TYPE_SHIFT);
 reg |= PCIE_DEVICE_TYPE_RC << PCIE_DEVICE_TYPE_SHIFT;
 dw_pcie_writel_dbi(pci, PCIE_GLOBAL_CONTROL_REG, reg);


 dw_pcie_writel_dbi(pci, PCIE_ARCACHE_TRC_REG, ARCACHE_DEFAULT_VALUE);
 dw_pcie_writel_dbi(pci, PCIE_AWCACHE_TRC_REG, AWCACHE_DEFAULT_VALUE);


 reg = dw_pcie_readl_dbi(pci, PCIE_ARUSER_REG);
 reg &= ~(AX_USER_DOMAIN_MASK << AX_USER_DOMAIN_SHIFT);
 reg |= DOMAIN_OUTER_SHAREABLE << AX_USER_DOMAIN_SHIFT;
 dw_pcie_writel_dbi(pci, PCIE_ARUSER_REG, reg);

 reg = dw_pcie_readl_dbi(pci, PCIE_AWUSER_REG);
 reg &= ~(AX_USER_DOMAIN_MASK << AX_USER_DOMAIN_SHIFT);
 reg |= DOMAIN_OUTER_SHAREABLE << AX_USER_DOMAIN_SHIFT;
 dw_pcie_writel_dbi(pci, PCIE_AWUSER_REG, reg);


 reg = dw_pcie_readl_dbi(pci, PCIE_GLOBAL_INT_MASK1_REG);
 reg |= PCIE_INT_A_ASSERT_MASK | PCIE_INT_B_ASSERT_MASK |
        PCIE_INT_C_ASSERT_MASK | PCIE_INT_D_ASSERT_MASK;
 dw_pcie_writel_dbi(pci, PCIE_GLOBAL_INT_MASK1_REG, reg);

 if (!dw_pcie_link_up(pci)) {

  reg = dw_pcie_readl_dbi(pci, PCIE_GLOBAL_CONTROL_REG);
  reg |= PCIE_APP_LTSSM_EN;
  dw_pcie_writel_dbi(pci, PCIE_GLOBAL_CONTROL_REG, reg);
 }


 if (dw_pcie_wait_for_link(pci))
  dev_err(pci->dev, "Link not up after reconfiguration\n");
}
