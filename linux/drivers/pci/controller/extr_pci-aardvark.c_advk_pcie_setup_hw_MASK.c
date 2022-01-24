#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct advk_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_CONFIG_REG ; 
 int CTRL_MODE_MASK ; 
 int CTRL_MODE_SHIFT ; 
 int /*<<< orphan*/  HOST_CTRL_INT_MASK_REG ; 
 int /*<<< orphan*/  HOST_CTRL_INT_STATUS_REG ; 
 int IS_RC_MSK ; 
 int IS_RC_SHIFT ; 
 int LANE_CNT_MSK ; 
 int LANE_COUNT_1 ; 
 int LINK_TRAINING_EN ; 
 int PCIE_CORE_CMD_IO_ACCESS_EN ; 
 int PCIE_CORE_CMD_MEM_ACCESS_EN ; 
 int PCIE_CORE_CMD_MEM_IO_REQ_EN ; 
 int /*<<< orphan*/  PCIE_CORE_CMD_STATUS_REG ; 
 int /*<<< orphan*/  PCIE_CORE_CTRL0_REG ; 
 int PCIE_CORE_CTRL2_MSI_ENABLE ; 
 int PCIE_CORE_CTRL2_OB_WIN_ENABLE ; 
 int /*<<< orphan*/  PCIE_CORE_CTRL2_REG ; 
 int PCIE_CORE_CTRL2_RESERVED ; 
 int PCIE_CORE_CTRL2_TD_ENABLE ; 
 int PCIE_CORE_DEV_CTRL_STATS_MAX_PAYLOAD_SZ_SHIFT ; 
 int PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SIZE_SHIFT ; 
 int PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SZ ; 
 int /*<<< orphan*/  PCIE_CORE_DEV_CTRL_STATS_REG ; 
 int PCIE_CORE_DEV_CTRL_STATS_RELAX_ORDER_DISABLE ; 
 int PCIE_CORE_DEV_CTRL_STATS_SNOOP_DISABLE ; 
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHCK ; 
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHCK_RCV ; 
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX ; 
 int PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX_EN ; 
 int /*<<< orphan*/  PCIE_CORE_ERR_CAPCTL_REG ; 
 int /*<<< orphan*/  PCIE_CORE_LINK_CTRL_STAT_REG ; 
 int PCIE_CORE_LINK_L0S_ENTRY ; 
 int PCIE_CORE_LINK_TRAINING ; 
 int PCIE_CORE_LINK_WIDTH_SHIFT ; 
 int PCIE_CORE_MODE_DIRECT ; 
 int PCIE_GEN_SEL_MSK ; 
 int PCIE_IRQ_ALL_MASK ; 
 int PCIE_IRQ_ENABLE_INTS_MASK ; 
 int PCIE_ISR0_ALL_MASK ; 
 int /*<<< orphan*/  PCIE_ISR0_MASK_REG ; 
 int PCIE_ISR0_MSI_INT_PENDING ; 
 int /*<<< orphan*/  PCIE_ISR0_REG ; 
 int PCIE_ISR1_ALL_MASK ; 
 int /*<<< orphan*/  PCIE_ISR1_MASK_REG ; 
 int /*<<< orphan*/  PCIE_ISR1_REG ; 
 int /*<<< orphan*/  PCIE_MSI_MASK_REG ; 
 int /*<<< orphan*/  PIO_CTRL ; 
 int PIO_CTRL_ADDR_WIN_DISABLE ; 
 int SPEED_GEN_2 ; 
 int /*<<< orphan*/  FUNC0 (struct advk_pcie*) ; 
 int FUNC1 (struct advk_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct advk_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct advk_pcie *pcie)
{
	u32 reg;

	/* Set to Direct mode */
	reg = FUNC1(pcie, CTRL_CONFIG_REG);
	reg &= ~(CTRL_MODE_MASK << CTRL_MODE_SHIFT);
	reg |= ((PCIE_CORE_MODE_DIRECT & CTRL_MODE_MASK) << CTRL_MODE_SHIFT);
	FUNC2(pcie, reg, CTRL_CONFIG_REG);

	/* Set PCI global control register to RC mode */
	reg = FUNC1(pcie, PCIE_CORE_CTRL0_REG);
	reg |= (IS_RC_MSK << IS_RC_SHIFT);
	FUNC2(pcie, reg, PCIE_CORE_CTRL0_REG);

	/* Set Advanced Error Capabilities and Control PF0 register */
	reg = PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX |
		PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX_EN |
		PCIE_CORE_ERR_CAPCTL_ECRC_CHCK |
		PCIE_CORE_ERR_CAPCTL_ECRC_CHCK_RCV;
	FUNC2(pcie, reg, PCIE_CORE_ERR_CAPCTL_REG);

	/* Set PCIe Device Control and Status 1 PF0 register */
	reg = PCIE_CORE_DEV_CTRL_STATS_RELAX_ORDER_DISABLE |
		(7 << PCIE_CORE_DEV_CTRL_STATS_MAX_PAYLOAD_SZ_SHIFT) |
		PCIE_CORE_DEV_CTRL_STATS_SNOOP_DISABLE |
		(PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SZ <<
		 PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SIZE_SHIFT);
	FUNC2(pcie, reg, PCIE_CORE_DEV_CTRL_STATS_REG);

	/* Program PCIe Control 2 to disable strict ordering */
	reg = PCIE_CORE_CTRL2_RESERVED |
		PCIE_CORE_CTRL2_TD_ENABLE;
	FUNC2(pcie, reg, PCIE_CORE_CTRL2_REG);

	/* Set GEN2 */
	reg = FUNC1(pcie, PCIE_CORE_CTRL0_REG);
	reg &= ~PCIE_GEN_SEL_MSK;
	reg |= SPEED_GEN_2;
	FUNC2(pcie, reg, PCIE_CORE_CTRL0_REG);

	/* Set lane X1 */
	reg = FUNC1(pcie, PCIE_CORE_CTRL0_REG);
	reg &= ~LANE_CNT_MSK;
	reg |= LANE_COUNT_1;
	FUNC2(pcie, reg, PCIE_CORE_CTRL0_REG);

	/* Enable link training */
	reg = FUNC1(pcie, PCIE_CORE_CTRL0_REG);
	reg |= LINK_TRAINING_EN;
	FUNC2(pcie, reg, PCIE_CORE_CTRL0_REG);

	/* Enable MSI */
	reg = FUNC1(pcie, PCIE_CORE_CTRL2_REG);
	reg |= PCIE_CORE_CTRL2_MSI_ENABLE;
	FUNC2(pcie, reg, PCIE_CORE_CTRL2_REG);

	/* Clear all interrupts */
	FUNC2(pcie, PCIE_ISR0_ALL_MASK, PCIE_ISR0_REG);
	FUNC2(pcie, PCIE_ISR1_ALL_MASK, PCIE_ISR1_REG);
	FUNC2(pcie, PCIE_IRQ_ALL_MASK, HOST_CTRL_INT_STATUS_REG);

	/* Disable All ISR0/1 Sources */
	reg = PCIE_ISR0_ALL_MASK;
	reg &= ~PCIE_ISR0_MSI_INT_PENDING;
	FUNC2(pcie, reg, PCIE_ISR0_MASK_REG);

	FUNC2(pcie, PCIE_ISR1_ALL_MASK, PCIE_ISR1_MASK_REG);

	/* Unmask all MSIs */
	FUNC2(pcie, 0, PCIE_MSI_MASK_REG);

	/* Enable summary interrupt for GIC SPI source */
	reg = PCIE_IRQ_ALL_MASK & (~PCIE_IRQ_ENABLE_INTS_MASK);
	FUNC2(pcie, reg, HOST_CTRL_INT_MASK_REG);

	reg = FUNC1(pcie, PCIE_CORE_CTRL2_REG);
	reg |= PCIE_CORE_CTRL2_OB_WIN_ENABLE;
	FUNC2(pcie, reg, PCIE_CORE_CTRL2_REG);

	/* Bypass the address window mapping for PIO */
	reg = FUNC1(pcie, PIO_CTRL);
	reg |= PIO_CTRL_ADDR_WIN_DISABLE;
	FUNC2(pcie, reg, PIO_CTRL);

	/* Start link training */
	reg = FUNC1(pcie, PCIE_CORE_LINK_CTRL_STAT_REG);
	reg |= PCIE_CORE_LINK_TRAINING;
	FUNC2(pcie, reg, PCIE_CORE_LINK_CTRL_STAT_REG);

	FUNC0(pcie);

	reg = PCIE_CORE_LINK_L0S_ENTRY |
		(1 << PCIE_CORE_LINK_WIDTH_SHIFT);
	FUNC2(pcie, reg, PCIE_CORE_LINK_CTRL_STAT_REG);

	reg = FUNC1(pcie, PCIE_CORE_CMD_STATUS_REG);
	reg |= PCIE_CORE_CMD_MEM_ACCESS_EN |
		PCIE_CORE_CMD_IO_ACCESS_EN |
		PCIE_CORE_CMD_MEM_IO_REQ_EN;
	FUNC2(pcie, reg, PCIE_CORE_CMD_STATUS_REG);
}