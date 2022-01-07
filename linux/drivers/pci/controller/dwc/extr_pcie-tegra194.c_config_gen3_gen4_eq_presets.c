
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dbi_base; } ;
struct tegra_pcie_dw {int num_lanes; struct dw_pcie pci; } ;


 int CAP_SPCIE_CAP_OFF ;
 int CAP_SPCIE_CAP_OFF_DSP_TX_PRESET0_MASK ;
 int CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK ;
 int CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT ;
 int GEN3_EQ_CONTROL_OFF ;
 int GEN3_EQ_CONTROL_OFF_FB_MODE_MASK ;
 int GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK ;
 int GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT ;
 int GEN3_GEN4_EQ_PRESET_INIT ;
 int GEN3_RELATED_OFF ;
 int GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK ;
 int GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT ;
 int PCI_EXT_CAP_ID_PL_16GT ;
 int PCI_PL_16GT_LE_CTRL ;
 int PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK ;
 int PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK ;
 int PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT ;
 int dw_pcie_find_ext_capability (struct dw_pcie*,int ) ;
 int dw_pcie_read (int,int,int*) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int dw_pcie_write (int,int,int) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;

__attribute__((used)) static void config_gen3_gen4_eq_presets(struct tegra_pcie_dw *pcie)
{
 struct dw_pcie *pci = &pcie->pci;
 u32 val, offset, i;


 for (i = 0; i < pcie->num_lanes; i++) {
  dw_pcie_read(pci->dbi_base + CAP_SPCIE_CAP_OFF
     + (i * 2), 2, &val);
  val &= ~CAP_SPCIE_CAP_OFF_DSP_TX_PRESET0_MASK;
  val |= GEN3_GEN4_EQ_PRESET_INIT;
  val &= ~CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK;
  val |= (GEN3_GEN4_EQ_PRESET_INIT <<
      CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT);
  dw_pcie_write(pci->dbi_base + CAP_SPCIE_CAP_OFF
     + (i * 2), 2, val);

  offset = dw_pcie_find_ext_capability(pci,
           PCI_EXT_CAP_ID_PL_16GT) +
    PCI_PL_16GT_LE_CTRL;
  dw_pcie_read(pci->dbi_base + offset + i, 1, &val);
  val &= ~PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK;
  val |= GEN3_GEN4_EQ_PRESET_INIT;
  val &= ~PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK;
  val |= (GEN3_GEN4_EQ_PRESET_INIT <<
   PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT);
  dw_pcie_write(pci->dbi_base + offset + i, 1, val);
 }

 val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
 val &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
 dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);

 val = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
 val &= ~GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK;
 val |= (0x3ff << GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT);
 val &= ~GEN3_EQ_CONTROL_OFF_FB_MODE_MASK;
 dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, val);

 val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
 val &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
 val |= (0x1 << GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT);
 dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);

 val = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
 val &= ~GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK;
 val |= (0x360 << GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT);
 val &= ~GEN3_EQ_CONTROL_OFF_FB_MODE_MASK;
 dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, val);

 val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
 val &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
 dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);
}
