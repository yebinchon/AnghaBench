
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_dw {int max_speed; int num_lanes; int core_clk; scalar_t__ update_fc_fixup; scalar_t__ pcie_cap_base; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int AMBA_ERROR_RESPONSE_CRS_MASK ;
 int AMBA_ERROR_RESPONSE_CRS_OKAY_FFFF0001 ;
 int AMBA_ERROR_RESPONSE_CRS_SHIFT ;
 int APPL_CTRL ;
 int APPL_CTRL_LTSSM_EN ;
 int APPL_PINMUX ;
 int APPL_PINMUX_PEX_RST ;
 int CFG_PREF_MEM_LIMIT_BASE_MEM_DECODE ;
 int CFG_PREF_MEM_LIMIT_BASE_MEM_LIMIT_DECODE ;
 int CFG_TIMER_CTRL_ACK_NAK_SHIFT ;
 scalar_t__ CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF ;
 int EINVAL ;
 int FTS_MASK ;
 int FTS_VAL ;
 scalar_t__ GEN3_RELATED_OFF ;
 int GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL ;
 int GEN4_CORE_CLK_FREQ ;
 int IO_BASE_IO_DECODE ;
 int IO_BASE_IO_DECODE_BIT8 ;
 int N_FTS_MASK ;
 int N_FTS_SHIFT ;
 int N_FTS_VAL ;
 scalar_t__ PCI_BASE_ADDRESS_0 ;
 scalar_t__ PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_MLW ;
 int PCI_EXP_LNKCAP_SLS ;
 int PCI_EXP_LNKSTA_NLW_SHIFT ;
 scalar_t__ PCI_IO_BASE ;
 scalar_t__ PCI_PREF_MEMORY_BASE ;
 scalar_t__ PORT_LOGIC_ACK_F_ASPM_CTRL ;
 scalar_t__ PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT ;
 scalar_t__ PORT_LOGIC_GEN2_CTRL ;
 int appl_readl (struct tegra_pcie_dw*,int ) ;
 int appl_writel (struct tegra_pcie_dw*,int,int ) ;
 int clk_set_rate (int ,int ) ;
 int config_gen3_gen4_eq_presets (struct tegra_pcie_dw*) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,scalar_t__) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,scalar_t__,int) ;
 int init_host_aspm (struct tegra_pcie_dw*) ;
 int msleep (int) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct tegra_pcie_dw* to_tegra_pcie (struct dw_pcie*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_pcie_prepare_host(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
 u32 val;

 val = dw_pcie_readl_dbi(pci, PCI_IO_BASE);
 val &= ~(IO_BASE_IO_DECODE | IO_BASE_IO_DECODE_BIT8);
 dw_pcie_writel_dbi(pci, PCI_IO_BASE, val);

 val = dw_pcie_readl_dbi(pci, PCI_PREF_MEMORY_BASE);
 val |= CFG_PREF_MEM_LIMIT_BASE_MEM_DECODE;
 val |= CFG_PREF_MEM_LIMIT_BASE_MEM_LIMIT_DECODE;
 dw_pcie_writel_dbi(pci, PCI_PREF_MEMORY_BASE, val);

 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0);


 val = dw_pcie_readl_dbi(pci, PORT_LOGIC_ACK_F_ASPM_CTRL);
 val &= ~(N_FTS_MASK << N_FTS_SHIFT);
 val |= N_FTS_VAL << N_FTS_SHIFT;
 dw_pcie_writel_dbi(pci, PORT_LOGIC_ACK_F_ASPM_CTRL, val);

 val = dw_pcie_readl_dbi(pci, PORT_LOGIC_GEN2_CTRL);
 val &= ~FTS_MASK;
 val |= FTS_VAL;
 dw_pcie_writel_dbi(pci, PORT_LOGIC_GEN2_CTRL, val);


 val = dw_pcie_readl_dbi(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT);
 val &= ~(AMBA_ERROR_RESPONSE_CRS_MASK << AMBA_ERROR_RESPONSE_CRS_SHIFT);
 val |= (AMBA_ERROR_RESPONSE_CRS_OKAY_FFFF0001 <<
  AMBA_ERROR_RESPONSE_CRS_SHIFT);
 dw_pcie_writel_dbi(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT, val);


 if (pcie->max_speed && pcie->max_speed != -EINVAL) {
  val = dw_pcie_readl_dbi(pci, pcie->pcie_cap_base +
     PCI_EXP_LNKCAP);
  val &= ~PCI_EXP_LNKCAP_SLS;
  val |= pcie->max_speed;
  dw_pcie_writel_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP,
       val);
 }


 val = dw_pcie_readl_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP);
 val &= ~PCI_EXP_LNKCAP_MLW;
 val |= (pcie->num_lanes << PCI_EXP_LNKSTA_NLW_SHIFT);
 dw_pcie_writel_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP, val);

 config_gen3_gen4_eq_presets(pcie);

 init_host_aspm(pcie);

 val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
 val &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
 dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);

 if (pcie->update_fc_fixup) {
  val = dw_pcie_readl_dbi(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF);
  val |= 0x1 << CFG_TIMER_CTRL_ACK_NAK_SHIFT;
  dw_pcie_writel_dbi(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF, val);
 }

 dw_pcie_setup_rc(pp);

 clk_set_rate(pcie->core_clk, GEN4_CORE_CLK_FREQ);


 val = appl_readl(pcie, APPL_PINMUX);
 val &= ~APPL_PINMUX_PEX_RST;
 appl_writel(pcie, val, APPL_PINMUX);

 usleep_range(100, 200);


 val = appl_readl(pcie, APPL_CTRL);
 val |= APPL_CTRL_LTSSM_EN;
 appl_writel(pcie, val, APPL_CTRL);


 val = appl_readl(pcie, APPL_PINMUX);
 val |= APPL_PINMUX_PEX_RST;
 appl_writel(pcie, val, APPL_PINMUX);

 msleep(100);
}
