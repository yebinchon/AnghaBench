
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_pcie {int phy_ref_clk; int apb_sys_clk; int apb_phy_clk; int pcie_aclk; int pcie_aux_clk; } ;


 int REF_CLK_FREQ ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;

__attribute__((used)) static int kirin_pcie_clk_ctrl(struct kirin_pcie *kirin_pcie, bool enable)
{
 int ret = 0;

 if (!enable)
  goto close_clk;

 ret = clk_set_rate(kirin_pcie->phy_ref_clk, REF_CLK_FREQ);
 if (ret)
  return ret;

 ret = clk_prepare_enable(kirin_pcie->phy_ref_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(kirin_pcie->apb_sys_clk);
 if (ret)
  goto apb_sys_fail;

 ret = clk_prepare_enable(kirin_pcie->apb_phy_clk);
 if (ret)
  goto apb_phy_fail;

 ret = clk_prepare_enable(kirin_pcie->pcie_aclk);
 if (ret)
  goto aclk_fail;

 ret = clk_prepare_enable(kirin_pcie->pcie_aux_clk);
 if (ret)
  goto aux_clk_fail;

 return 0;

close_clk:
 clk_disable_unprepare(kirin_pcie->pcie_aux_clk);
aux_clk_fail:
 clk_disable_unprepare(kirin_pcie->pcie_aclk);
aclk_fail:
 clk_disable_unprepare(kirin_pcie->apb_phy_clk);
apb_phy_fail:
 clk_disable_unprepare(kirin_pcie->apb_sys_clk);
apb_sys_fail:
 clk_disable_unprepare(kirin_pcie->phy_ref_clk);

 return ret;
}
