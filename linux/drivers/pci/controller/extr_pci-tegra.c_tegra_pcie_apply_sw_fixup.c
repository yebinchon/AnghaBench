
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_pcie_soc {int update_fc_threshold; scalar_t__ update_fc_timer; scalar_t__ raw_violation_fixup; scalar_t__ program_deskew_time; } ;
struct tegra_pcie_port {scalar_t__ base; TYPE_1__* pcie; } ;
struct TYPE_2__ {struct tegra_pcie_soc* soc; } ;


 int PCI_EXP_LNKSTA_CLS ;
 int PCI_EXP_LNKSTA_CLS_2_5GB ;
 scalar_t__ RP_LINK_CONTROL_STATUS_2 ;
 scalar_t__ RP_PRIV_XP_DL ;
 int RP_PRIV_XP_DL_GEN2_UPD_FC_TSHOLD ;
 scalar_t__ RP_RX_HDR_LIMIT ;
 int RP_RX_HDR_LIMIT_PW ;
 int RP_RX_HDR_LIMIT_PW_MASK ;
 scalar_t__ RP_VEND_CTL0 ;
 int RP_VEND_CTL0_DSK_RST_PULSE_WIDTH ;
 int RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK ;
 scalar_t__ RP_VEND_XP ;
 int RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tegra_pcie_apply_sw_fixup(struct tegra_pcie_port *port)
{
 const struct tegra_pcie_soc *soc = port->pcie->soc;
 u32 value;






 if (soc->program_deskew_time) {
  value = readl(port->base + RP_VEND_CTL0);
  value &= ~RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK;
  value |= RP_VEND_CTL0_DSK_RST_PULSE_WIDTH;
  writel(value, port->base + RP_VEND_CTL0);
 }


 if (soc->raw_violation_fixup) {
  value = readl(port->base + RP_RX_HDR_LIMIT);
  value &= ~RP_RX_HDR_LIMIT_PW_MASK;
  value |= RP_RX_HDR_LIMIT_PW;
  writel(value, port->base + RP_RX_HDR_LIMIT);

  value = readl(port->base + RP_PRIV_XP_DL);
  value |= RP_PRIV_XP_DL_GEN2_UPD_FC_TSHOLD;
  writel(value, port->base + RP_PRIV_XP_DL);

  value = readl(port->base + RP_VEND_XP);
  value &= ~RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK;
  value |= soc->update_fc_threshold;
  writel(value, port->base + RP_VEND_XP);
 }

 if (soc->update_fc_timer) {
  value = readl(port->base + RP_VEND_XP);
  value &= ~RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK;
  value |= soc->update_fc_threshold;
  writel(value, port->base + RP_VEND_XP);
 }







 value = readl(port->base + RP_LINK_CONTROL_STATUS_2);
 value &= ~PCI_EXP_LNKSTA_CLS;
 value |= PCI_EXP_LNKSTA_CLS_2_5GB;
 writel(value, port->base + RP_LINK_CONTROL_STATUS_2);
}
