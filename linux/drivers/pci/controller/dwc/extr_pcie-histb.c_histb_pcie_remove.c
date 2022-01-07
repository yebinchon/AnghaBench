
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct histb_pcie {scalar_t__ phy; } ;


 int histb_pcie_host_disable (struct histb_pcie*) ;
 int phy_exit (scalar_t__) ;
 struct histb_pcie* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int histb_pcie_remove(struct platform_device *pdev)
{
 struct histb_pcie *hipcie = platform_get_drvdata(pdev);

 histb_pcie_host_disable(hipcie);

 if (hipcie->phy)
  phy_exit(hipcie->phy);

 return 0;
}
