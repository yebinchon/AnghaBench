
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pcie_priv {int dummy; } ;
struct platform_device {int dummy; } ;


 struct uniphier_pcie_priv* platform_get_drvdata (struct platform_device*) ;
 int uniphier_pcie_host_disable (struct uniphier_pcie_priv*) ;

__attribute__((used)) static int uniphier_pcie_remove(struct platform_device *pdev)
{
 struct uniphier_pcie_priv *priv = platform_get_drvdata(pdev);

 uniphier_pcie_host_disable(priv);

 return 0;
}
