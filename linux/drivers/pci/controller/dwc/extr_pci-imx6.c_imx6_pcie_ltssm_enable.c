
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx6_pcie {int apps_reset; int iomuxc_gpr; TYPE_1__* drvdata; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int variant; } ;




 int IMX6Q_GPR12_PCIE_CTL_2 ;



 int IOMUXC_GPR12 ;
 struct imx6_pcie* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void imx6_pcie_ltssm_enable(struct device *dev)
{
 struct imx6_pcie *imx6_pcie = dev_get_drvdata(dev);

 switch (imx6_pcie->drvdata->variant) {
 case 132:
 case 130:
 case 131:
  regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,
       IMX6Q_GPR12_PCIE_CTL_2,
       IMX6Q_GPR12_PCIE_CTL_2);
  break;
 case 129:
 case 128:
  reset_control_deassert(imx6_pcie->apps_reset);
  break;
 }
}
