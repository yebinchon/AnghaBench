
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx6_pcie {int gpio_active_high; scalar_t__ vpcie; int pcie_phy; int pcie_bus; int pcie; int iomuxc_gpr; scalar_t__ phy_base; int pciephy_reset; TYPE_1__* drvdata; int reset_gpio; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int variant; } ;




 int IMX6Q_GPR1_PCIE_SW_RST ;

 int IMX6SX_GPR5_PCIE_BTNRST_RESET ;


 int IOMUXC_GPR1 ;
 int IOMUXC_GPR5 ;
 scalar_t__ PCIE_PHY_CMN_REG24 ;
 int PCIE_PHY_CMN_REG24_RX_EQ ;
 int PCIE_PHY_CMN_REG24_RX_EQ_SEL ;
 scalar_t__ PCIE_PHY_CMN_REG26 ;
 int PCIE_PHY_CMN_REG26_ATT_MODE ;
 scalar_t__ PCIE_PHY_CMN_REG4 ;
 int PCIE_PHY_CMN_REG4_DCC_FB_EN ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int imx6_pcie_enable_ref_clk (struct imx6_pcie*) ;
 int imx7d_pcie_wait_for_phy_pll_lock (struct imx6_pcie*) ;
 int likely (scalar_t__) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 scalar_t__ regulator_is_enabled (scalar_t__) ;
 int reset_control_deassert (int ) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 struct device *dev = pci->dev;
 int ret;

 if (imx6_pcie->vpcie && !regulator_is_enabled(imx6_pcie->vpcie)) {
  ret = regulator_enable(imx6_pcie->vpcie);
  if (ret) {
   dev_err(dev, "failed to enable vpcie regulator: %d\n",
    ret);
   return;
  }
 }

 ret = clk_prepare_enable(imx6_pcie->pcie_phy);
 if (ret) {
  dev_err(dev, "unable to enable pcie_phy clock\n");
  goto err_pcie_phy;
 }

 ret = clk_prepare_enable(imx6_pcie->pcie_bus);
 if (ret) {
  dev_err(dev, "unable to enable pcie_bus clock\n");
  goto err_pcie_bus;
 }

 ret = clk_prepare_enable(imx6_pcie->pcie);
 if (ret) {
  dev_err(dev, "unable to enable pcie clock\n");
  goto err_pcie;
 }

 ret = imx6_pcie_enable_ref_clk(imx6_pcie);
 if (ret) {
  dev_err(dev, "unable to enable pcie ref clock\n");
  goto err_ref_clk;
 }


 usleep_range(200, 500);


 if (gpio_is_valid(imx6_pcie->reset_gpio)) {
  gpio_set_value_cansleep(imx6_pcie->reset_gpio,
     imx6_pcie->gpio_active_high);
  msleep(100);
  gpio_set_value_cansleep(imx6_pcie->reset_gpio,
     !imx6_pcie->gpio_active_high);
 }

 switch (imx6_pcie->drvdata->variant) {
 case 128:
  reset_control_deassert(imx6_pcie->pciephy_reset);
  break;
 case 129:
  reset_control_deassert(imx6_pcie->pciephy_reset);





  if (likely(imx6_pcie->phy_base)) {

   writel(PCIE_PHY_CMN_REG4_DCC_FB_EN,
          imx6_pcie->phy_base + PCIE_PHY_CMN_REG4);

   writel(PCIE_PHY_CMN_REG24_RX_EQ_SEL
    | PCIE_PHY_CMN_REG24_RX_EQ,
          imx6_pcie->phy_base + PCIE_PHY_CMN_REG24);

   writel(PCIE_PHY_CMN_REG26_ATT_MODE,
          imx6_pcie->phy_base + PCIE_PHY_CMN_REG26);
  } else {
   dev_warn(dev, "Unable to apply ERR010728 workaround. DT missing fsl,imx7d-pcie-phy phandle ?\n");
  }

  imx7d_pcie_wait_for_phy_pll_lock(imx6_pcie);
  break;
 case 130:
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR5,
       IMX6SX_GPR5_PCIE_BTNRST_RESET, 0);
  break;
 case 131:
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
       IMX6Q_GPR1_PCIE_SW_RST, 0);

  usleep_range(200, 500);
  break;
 case 132:
  break;
 }

 return;

err_ref_clk:
 clk_disable_unprepare(imx6_pcie->pcie);
err_pcie:
 clk_disable_unprepare(imx6_pcie->pcie_bus);
err_pcie_bus:
 clk_disable_unprepare(imx6_pcie->pcie_phy);
err_pcie_phy:
 if (imx6_pcie->vpcie && regulator_is_enabled(imx6_pcie->vpcie) > 0) {
  ret = regulator_disable(imx6_pcie->vpcie);
  if (ret)
   dev_err(dev, "failed to disable vpcie regulator: %d\n",
    ret);
 }
}
