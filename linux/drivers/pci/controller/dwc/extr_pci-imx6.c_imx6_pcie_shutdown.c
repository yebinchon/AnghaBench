
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx6_pcie {int dummy; } ;


 int imx6_pcie_assert_core_reset (struct imx6_pcie*) ;
 struct imx6_pcie* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void imx6_pcie_shutdown(struct platform_device *pdev)
{
 struct imx6_pcie *imx6_pcie = platform_get_drvdata(pdev);


 imx6_pcie_assert_core_reset(imx6_pcie);
}
