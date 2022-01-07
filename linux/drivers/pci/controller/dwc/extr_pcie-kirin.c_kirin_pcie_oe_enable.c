
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kirin_pcie {int sysctrl; } ;


 int PCIE_DEBOUNCE_PARAM ;
 int PCIE_OE_BYPASS ;
 int SCTRL_PCIE_OE_OFFSET ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void kirin_pcie_oe_enable(struct kirin_pcie *kirin_pcie)
{
 u32 val;

 regmap_read(kirin_pcie->sysctrl, SCTRL_PCIE_OE_OFFSET, &val);
 val |= PCIE_DEBOUNCE_PARAM;
 val &= ~PCIE_OE_BYPASS;
 regmap_write(kirin_pcie->sysctrl, SCTRL_PCIE_OE_OFFSET, val);
}
