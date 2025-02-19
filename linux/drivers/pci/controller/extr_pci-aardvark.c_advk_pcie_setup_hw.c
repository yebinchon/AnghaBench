
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct advk_pcie {int dummy; } ;


 int CTRL_CONFIG_REG ;
 int CTRL_MODE_MASK ;
 int CTRL_MODE_SHIFT ;
 int HOST_CTRL_INT_MASK_REG ;
 int HOST_CTRL_INT_STATUS_REG ;
 int IS_RC_MSK ;
 int IS_RC_SHIFT ;
 int LANE_CNT_MSK ;
 int LANE_COUNT_1 ;
 int LINK_TRAINING_EN ;
 int PCIE_CORE_CMD_IO_ACCESS_EN ;
 int PCIE_CORE_CMD_MEM_ACCESS_EN ;
 int PCIE_CORE_CMD_MEM_IO_REQ_EN ;
 int PCIE_CORE_CMD_STATUS_REG ;
 int PCIE_CORE_CTRL0_REG ;
 int PCIE_CORE_CTRL2_MSI_ENABLE ;
 int PCIE_CORE_CTRL2_OB_WIN_ENABLE ;
 int PCIE_CORE_CTRL2_REG ;
 int PCIE_CORE_CTRL2_RESERVED ;
 int PCIE_CORE_CTRL2_TD_ENABLE ;
 int PCIE_CORE_DEV_CTRL_STATS_MAX_PAYLOAD_SZ_SHIFT ;
 int PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SIZE_SHIFT ;
 int PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SZ ;
 int PCIE_CORE_DEV_CTRL_STATS_REG ;
 int PCIE_CORE_DEV_CTRL_STATS_RELAX_ORDER_DISABLE ;
 int PCIE_CORE_DEV_CTRL_STATS_SNOOP_DISABLE ;
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHCK ;
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHCK_RCV ;
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX ;
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX_EN ;
 int PCIE_CORE_ERR_CAPCTL_REG ;
 int PCIE_CORE_LINK_CTRL_STAT_REG ;
 int PCIE_CORE_LINK_L0S_ENTRY ;
 int PCIE_CORE_LINK_TRAINING ;
 int PCIE_CORE_LINK_WIDTH_SHIFT ;
 int PCIE_CORE_MODE_DIRECT ;
 int PCIE_GEN_SEL_MSK ;
 int PCIE_IRQ_ALL_MASK ;
 int PCIE_IRQ_ENABLE_INTS_MASK ;
 int PCIE_ISR0_ALL_MASK ;
 int PCIE_ISR0_MASK_REG ;
 int PCIE_ISR0_MSI_INT_PENDING ;
 int PCIE_ISR0_REG ;
 int PCIE_ISR1_ALL_MASK ;
 int PCIE_ISR1_MASK_REG ;
 int PCIE_ISR1_REG ;
 int PCIE_MSI_MASK_REG ;
 int PIO_CTRL ;
 int PIO_CTRL_ADDR_WIN_DISABLE ;
 int SPEED_GEN_2 ;
 int advk_pcie_wait_for_link (struct advk_pcie*) ;
 int advk_readl (struct advk_pcie*,int ) ;
 int advk_writel (struct advk_pcie*,int,int ) ;

__attribute__((used)) static void advk_pcie_setup_hw(struct advk_pcie *pcie)
{
 u32 reg;


 reg = advk_readl(pcie, CTRL_CONFIG_REG);
 reg &= ~(CTRL_MODE_MASK << CTRL_MODE_SHIFT);
 reg |= ((PCIE_CORE_MODE_DIRECT & CTRL_MODE_MASK) << CTRL_MODE_SHIFT);
 advk_writel(pcie, reg, CTRL_CONFIG_REG);


 reg = advk_readl(pcie, PCIE_CORE_CTRL0_REG);
 reg |= (IS_RC_MSK << IS_RC_SHIFT);
 advk_writel(pcie, reg, PCIE_CORE_CTRL0_REG);


 reg = PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX |
  PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX_EN |
  PCIE_CORE_ERR_CAPCTL_ECRC_CHCK |
  PCIE_CORE_ERR_CAPCTL_ECRC_CHCK_RCV;
 advk_writel(pcie, reg, PCIE_CORE_ERR_CAPCTL_REG);


 reg = PCIE_CORE_DEV_CTRL_STATS_RELAX_ORDER_DISABLE |
  (7 << PCIE_CORE_DEV_CTRL_STATS_MAX_PAYLOAD_SZ_SHIFT) |
  PCIE_CORE_DEV_CTRL_STATS_SNOOP_DISABLE |
  (PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SZ <<
   PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SIZE_SHIFT);
 advk_writel(pcie, reg, PCIE_CORE_DEV_CTRL_STATS_REG);


 reg = PCIE_CORE_CTRL2_RESERVED |
  PCIE_CORE_CTRL2_TD_ENABLE;
 advk_writel(pcie, reg, PCIE_CORE_CTRL2_REG);


 reg = advk_readl(pcie, PCIE_CORE_CTRL0_REG);
 reg &= ~PCIE_GEN_SEL_MSK;
 reg |= SPEED_GEN_2;
 advk_writel(pcie, reg, PCIE_CORE_CTRL0_REG);


 reg = advk_readl(pcie, PCIE_CORE_CTRL0_REG);
 reg &= ~LANE_CNT_MSK;
 reg |= LANE_COUNT_1;
 advk_writel(pcie, reg, PCIE_CORE_CTRL0_REG);


 reg = advk_readl(pcie, PCIE_CORE_CTRL0_REG);
 reg |= LINK_TRAINING_EN;
 advk_writel(pcie, reg, PCIE_CORE_CTRL0_REG);


 reg = advk_readl(pcie, PCIE_CORE_CTRL2_REG);
 reg |= PCIE_CORE_CTRL2_MSI_ENABLE;
 advk_writel(pcie, reg, PCIE_CORE_CTRL2_REG);


 advk_writel(pcie, PCIE_ISR0_ALL_MASK, PCIE_ISR0_REG);
 advk_writel(pcie, PCIE_ISR1_ALL_MASK, PCIE_ISR1_REG);
 advk_writel(pcie, PCIE_IRQ_ALL_MASK, HOST_CTRL_INT_STATUS_REG);


 reg = PCIE_ISR0_ALL_MASK;
 reg &= ~PCIE_ISR0_MSI_INT_PENDING;
 advk_writel(pcie, reg, PCIE_ISR0_MASK_REG);

 advk_writel(pcie, PCIE_ISR1_ALL_MASK, PCIE_ISR1_MASK_REG);


 advk_writel(pcie, 0, PCIE_MSI_MASK_REG);


 reg = PCIE_IRQ_ALL_MASK & (~PCIE_IRQ_ENABLE_INTS_MASK);
 advk_writel(pcie, reg, HOST_CTRL_INT_MASK_REG);

 reg = advk_readl(pcie, PCIE_CORE_CTRL2_REG);
 reg |= PCIE_CORE_CTRL2_OB_WIN_ENABLE;
 advk_writel(pcie, reg, PCIE_CORE_CTRL2_REG);


 reg = advk_readl(pcie, PIO_CTRL);
 reg |= PIO_CTRL_ADDR_WIN_DISABLE;
 advk_writel(pcie, reg, PIO_CTRL);


 reg = advk_readl(pcie, PCIE_CORE_LINK_CTRL_STAT_REG);
 reg |= PCIE_CORE_LINK_TRAINING;
 advk_writel(pcie, reg, PCIE_CORE_LINK_CTRL_STAT_REG);

 advk_pcie_wait_for_link(pcie);

 reg = PCIE_CORE_LINK_L0S_ENTRY |
  (1 << PCIE_CORE_LINK_WIDTH_SHIFT);
 advk_writel(pcie, reg, PCIE_CORE_LINK_CTRL_STAT_REG);

 reg = advk_readl(pcie, PCIE_CORE_CMD_STATUS_REG);
 reg |= PCIE_CORE_CMD_MEM_ACCESS_EN |
  PCIE_CORE_CMD_IO_ACCESS_EN |
  PCIE_CORE_CMD_MEM_IO_REQ_EN;
 advk_writel(pcie, reg, PCIE_CORE_CMD_STATUS_REG);
}
