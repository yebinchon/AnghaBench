
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx6_pcie {int iomuxc_gpr; int pcie_aux; int pcie_inbound_axi; TYPE_1__* drvdata; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int variant; } ;




 int IMX6Q_GPR1_PCIE_REF_CLK_EN ;
 int IMX6Q_GPR1_PCIE_TEST_PD ;

 int IMX6SX_GPR12_PCIE_TEST_POWERDOWN ;


 int IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE ;
 int IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN ;
 unsigned int IOMUXC_GPR1 ;
 unsigned int IOMUXC_GPR12 ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 unsigned int imx6_pcie_grp_offset (struct imx6_pcie*) ;
 int regmap_update_bits (int ,unsigned int,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 struct device *dev = pci->dev;
 unsigned int offset;
 int ret = 0;

 switch (imx6_pcie->drvdata->variant) {
 case 130:
  ret = clk_prepare_enable(imx6_pcie->pcie_inbound_axi);
  if (ret) {
   dev_err(dev, "unable to enable pcie_axi clock\n");
   break;
  }

  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,
       IMX6SX_GPR12_PCIE_TEST_POWERDOWN, 0);
  break;
 case 131:
 case 132:

  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
       IMX6Q_GPR1_PCIE_TEST_PD, 0 << 18);






  usleep_range(10, 100);
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
       IMX6Q_GPR1_PCIE_REF_CLK_EN, 1 << 16);
  break;
 case 129:
  break;
 case 128:
  ret = clk_prepare_enable(imx6_pcie->pcie_aux);
  if (ret) {
   dev_err(dev, "unable to enable pcie_aux clock\n");
   break;
  }

  offset = imx6_pcie_grp_offset(imx6_pcie);




  regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
       IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
       0);
  regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
       IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
       IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
  break;
 }

 return ret;
}
