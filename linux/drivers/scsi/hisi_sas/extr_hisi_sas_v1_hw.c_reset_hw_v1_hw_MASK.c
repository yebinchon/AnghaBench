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
typedef  scalar_t__ u32 ;
struct hisi_hba {int n_phy; int /*<<< orphan*/  ctrl_reset_sts_reg; scalar_t__ ctrl; scalar_t__ ctrl_clock_ena_reg; scalar_t__ ctrl_reset_reg; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  AXI_CFG ; 
 int /*<<< orphan*/  DMA_RX_STATUS ; 
 scalar_t__ DMA_RX_STATUS_BUSY_MSK ; 
 int /*<<< orphan*/  DMA_TX_STATUS ; 
 scalar_t__ DMA_TX_STATUS_BUSY_MSK ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  PHY_CTRL ; 
 scalar_t__ PHY_CTRL_RESET_MSK ; 
 scalar_t__ RESET_VALUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct hisi_hba *hisi_hba)
{
	int i;
	unsigned long end_time;
	u32 val;
	struct device *dev = hisi_hba->dev;

	for (i = 0; i < hisi_hba->n_phy; i++) {
		u32 phy_ctrl = FUNC5(hisi_hba, i, PHY_CTRL);

		phy_ctrl |= PHY_CTRL_RESET_MSK;
		FUNC6(hisi_hba, i, PHY_CTRL, phy_ctrl);
	}
	FUNC9(1); /* It is safe to wait for 50us */

	/* Ensure DMA tx & rx idle */
	for (i = 0; i < hisi_hba->n_phy; i++) {
		u32 dma_tx_status, dma_rx_status;

		end_time = jiffies + FUNC8(1000);

		while (1) {
			dma_tx_status = FUNC5(hisi_hba, i,
							    DMA_TX_STATUS);
			dma_rx_status = FUNC5(hisi_hba, i,
							    DMA_RX_STATUS);

			if (!(dma_tx_status & DMA_TX_STATUS_BUSY_MSK) &&
				!(dma_rx_status & DMA_RX_STATUS_BUSY_MSK))
				break;

			FUNC9(20);
			if (FUNC12(jiffies, end_time))
				return -EIO;
		}
	}

	/* Ensure axi bus idle */
	end_time = jiffies + FUNC8(1000);
	while (1) {
		u32 axi_status =
			FUNC7(hisi_hba, AXI_CFG);

		if (axi_status == 0)
			break;

		FUNC9(20);
		if (FUNC12(jiffies, end_time))
			return -EIO;
	}

	if (FUNC1(dev)) {
		acpi_status s;

		s = FUNC2(FUNC1(dev), "_RST", NULL, NULL);
		if (FUNC0(s)) {
			FUNC3(dev, "Reset failed\n");
			return -EIO;
		}
	} else if (hisi_hba->ctrl) {
		/* Apply reset and disable clock */
		/* clk disable reg is offset by +4 bytes from clk enable reg */
		FUNC11(hisi_hba->ctrl, hisi_hba->ctrl_reset_reg,
			     RESET_VALUE);
		FUNC11(hisi_hba->ctrl, hisi_hba->ctrl_clock_ena_reg + 4,
			     RESET_VALUE);
		FUNC9(1);
		FUNC10(hisi_hba->ctrl, hisi_hba->ctrl_reset_sts_reg, &val);
		if (RESET_VALUE != (val & RESET_VALUE)) {
			FUNC3(dev, "Reset failed\n");
			return -EIO;
		}

		/* De-reset and enable clock */
		/* deassert rst reg is offset by +4 bytes from assert reg */
		FUNC11(hisi_hba->ctrl, hisi_hba->ctrl_reset_reg + 4,
			     RESET_VALUE);
		FUNC11(hisi_hba->ctrl, hisi_hba->ctrl_clock_ena_reg,
			     RESET_VALUE);
		FUNC9(1);
		FUNC10(hisi_hba->ctrl, hisi_hba->ctrl_reset_sts_reg, &val);
		if (val & RESET_VALUE) {
			FUNC3(dev, "De-reset failed\n");
			return -EIO;
		}
	} else {
		FUNC4(dev, "no reset method\n");
		return -EINVAL;
	}

	return 0;
}