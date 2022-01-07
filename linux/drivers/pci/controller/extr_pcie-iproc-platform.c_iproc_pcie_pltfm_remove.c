
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iproc_pcie {int dummy; } ;


 int iproc_pcie_remove (struct iproc_pcie*) ;
 struct iproc_pcie* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int iproc_pcie_pltfm_remove(struct platform_device *pdev)
{
 struct iproc_pcie *pcie = platform_get_drvdata(pdev);

 return iproc_pcie_remove(pcie);
}
