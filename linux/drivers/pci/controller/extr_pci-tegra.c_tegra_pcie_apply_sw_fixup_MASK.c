#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tegra_pcie_soc {int /*<<< orphan*/  update_fc_threshold; scalar_t__ update_fc_timer; scalar_t__ raw_violation_fixup; scalar_t__ program_deskew_time; } ;
struct tegra_pcie_port {scalar_t__ base; TYPE_1__* pcie; } ;
struct TYPE_2__ {struct tegra_pcie_soc* soc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_LNKSTA_CLS ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA_CLS_2_5GB ; 
 scalar_t__ RP_LINK_CONTROL_STATUS_2 ; 
 scalar_t__ RP_PRIV_XP_DL ; 
 int /*<<< orphan*/  RP_PRIV_XP_DL_GEN2_UPD_FC_TSHOLD ; 
 scalar_t__ RP_RX_HDR_LIMIT ; 
 int /*<<< orphan*/  RP_RX_HDR_LIMIT_PW ; 
 int /*<<< orphan*/  RP_RX_HDR_LIMIT_PW_MASK ; 
 scalar_t__ RP_VEND_CTL0 ; 
 int /*<<< orphan*/  RP_VEND_CTL0_DSK_RST_PULSE_WIDTH ; 
 int /*<<< orphan*/  RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK ; 
 scalar_t__ RP_VEND_XP ; 
 int /*<<< orphan*/  RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tegra_pcie_port *port)
{
	const struct tegra_pcie_soc *soc = port->pcie->soc;
	u32 value;

	/*
	 * Sometimes link speed change from Gen2 to Gen1 fails due to
	 * instability in deskew logic on lane-0. Increase the deskew
	 * retry time to resolve this issue.
	 */
	if (soc->program_deskew_time) {
		value = FUNC0(port->base + RP_VEND_CTL0);
		value &= ~RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK;
		value |= RP_VEND_CTL0_DSK_RST_PULSE_WIDTH;
		FUNC1(value, port->base + RP_VEND_CTL0);
	}

	/* Fixup for read after write violation. */
	if (soc->raw_violation_fixup) {
		value = FUNC0(port->base + RP_RX_HDR_LIMIT);
		value &= ~RP_RX_HDR_LIMIT_PW_MASK;
		value |= RP_RX_HDR_LIMIT_PW;
		FUNC1(value, port->base + RP_RX_HDR_LIMIT);

		value = FUNC0(port->base + RP_PRIV_XP_DL);
		value |= RP_PRIV_XP_DL_GEN2_UPD_FC_TSHOLD;
		FUNC1(value, port->base + RP_PRIV_XP_DL);

		value = FUNC0(port->base + RP_VEND_XP);
		value &= ~RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK;
		value |= soc->update_fc_threshold;
		FUNC1(value, port->base + RP_VEND_XP);
	}

	if (soc->update_fc_timer) {
		value = FUNC0(port->base + RP_VEND_XP);
		value &= ~RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK;
		value |= soc->update_fc_threshold;
		FUNC1(value, port->base + RP_VEND_XP);
	}

	/*
	 * PCIe link doesn't come up with few legacy PCIe endpoints if
	 * root port advertises both Gen-1 and Gen-2 speeds in Tegra.
	 * Hence, the strategy followed here is to initially advertise
	 * only Gen-1 and after link is up, retrain link to Gen-2 speed
	 */
	value = FUNC0(port->base + RP_LINK_CONTROL_STATUS_2);
	value &= ~PCI_EXP_LNKSTA_CLS;
	value |= PCI_EXP_LNKSTA_CLS_2_5GB;
	FUNC1(value, port->base + RP_LINK_CONTROL_STATUS_2);
}