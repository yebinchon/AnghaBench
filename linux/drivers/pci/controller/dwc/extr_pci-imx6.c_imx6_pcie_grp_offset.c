
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx6_pcie {int controller_id; TYPE_1__* drvdata; } ;
struct TYPE_2__ {scalar_t__ variant; } ;


 scalar_t__ IMX8MQ ;
 unsigned int IOMUXC_GPR14 ;
 unsigned int IOMUXC_GPR16 ;
 int WARN_ON (int) ;

__attribute__((used)) static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
{
 WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ);
 return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 : IOMUXC_GPR14;
}
