
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_soc {scalar_t__ has_cml_clk; } ;
struct tegra_pcie {void* cml_clk; void* pll_e; void* afi_clk; void* pex_clk; struct tegra_pcie_soc* soc; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int tegra_pcie_clocks_get(struct tegra_pcie *pcie)
{
 struct device *dev = pcie->dev;
 const struct tegra_pcie_soc *soc = pcie->soc;

 pcie->pex_clk = devm_clk_get(dev, "pex");
 if (IS_ERR(pcie->pex_clk))
  return PTR_ERR(pcie->pex_clk);

 pcie->afi_clk = devm_clk_get(dev, "afi");
 if (IS_ERR(pcie->afi_clk))
  return PTR_ERR(pcie->afi_clk);

 pcie->pll_e = devm_clk_get(dev, "pll_e");
 if (IS_ERR(pcie->pll_e))
  return PTR_ERR(pcie->pll_e);

 if (soc->has_cml_clk) {
  pcie->cml_clk = devm_clk_get(dev, "cml");
  if (IS_ERR(pcie->cml_clk))
   return PTR_ERR(pcie->cml_clk);
 }

 return 0;
}
