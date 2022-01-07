
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_pinctrl {int dummy; } ;


 int BOND_I2S_CLR ;
 int BOND_MSDC0E_CLR ;
 int BOND_PCIE_CLR ;
 int PIN_BOND_REG0 ;
 int PIN_BOND_REG1 ;
 int PIN_BOND_REG2 ;
 int mtk_rmw (struct mtk_pinctrl*,int ,int ,int ,int ) ;
 struct mtk_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void mt7623_bonding_disable(struct platform_device *pdev)
{
 struct mtk_pinctrl *hw = platform_get_drvdata(pdev);

 mtk_rmw(hw, 0, PIN_BOND_REG0, BOND_PCIE_CLR, BOND_PCIE_CLR);
 mtk_rmw(hw, 0, PIN_BOND_REG1, BOND_I2S_CLR, BOND_I2S_CLR);
 mtk_rmw(hw, 0, PIN_BOND_REG2, BOND_MSDC0E_CLR, BOND_MSDC0E_CLR);
}
