
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imx6_pcie {scalar_t__ vpcie; int iomuxc_gpr; int apps_reset; int pciephy_reset; TYPE_2__* drvdata; TYPE_1__* pci; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int variant; } ;
struct TYPE_3__ {struct device* dev; } ;




 int IMX6Q_GPR1_PCIE_REF_CLK_EN ;
 int IMX6Q_GPR1_PCIE_SW_RST ;
 int IMX6Q_GPR1_PCIE_TEST_PD ;

 int IMX6SX_GPR12_PCIE_TEST_POWERDOWN ;
 int IMX6SX_GPR5_PCIE_BTNRST_RESET ;


 int IOMUXC_GPR1 ;
 int IOMUXC_GPR12 ;
 int IOMUXC_GPR5 ;
 int dev_err (struct device*,char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_disable (scalar_t__) ;
 scalar_t__ regulator_is_enabled (scalar_t__) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
{
 struct device *dev = imx6_pcie->pci->dev;

 switch (imx6_pcie->drvdata->variant) {
 case 129:
 case 128:
  reset_control_assert(imx6_pcie->pciephy_reset);
  reset_control_assert(imx6_pcie->apps_reset);
  break;
 case 130:
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,
       IMX6SX_GPR12_PCIE_TEST_POWERDOWN,
       IMX6SX_GPR12_PCIE_TEST_POWERDOWN);

  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR5,
       IMX6SX_GPR5_PCIE_BTNRST_RESET,
       IMX6SX_GPR5_PCIE_BTNRST_RESET);
  break;
 case 131:
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
       IMX6Q_GPR1_PCIE_SW_RST,
       IMX6Q_GPR1_PCIE_SW_RST);
  break;
 case 132:
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
       IMX6Q_GPR1_PCIE_TEST_PD, 1 << 18);
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
       IMX6Q_GPR1_PCIE_REF_CLK_EN, 0 << 16);
  break;
 }

 if (imx6_pcie->vpcie && regulator_is_enabled(imx6_pcie->vpcie) > 0) {
  int ret = regulator_disable(imx6_pcie->vpcie);

  if (ret)
   dev_err(dev, "failed to disable vpcie regulator: %d\n",
    ret);
 }
}
