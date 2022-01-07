
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 int CLK_MAX ;
 int CLK_NONE ;
 int * clk_names ;
 struct clk* devm_clk_get (int *,int ) ;

__attribute__((used)) static void init_clks(struct platform_device *pdev, struct clk **clk)
{
 int i;

 for (i = CLK_NONE + 1; i < CLK_MAX; i++)
  clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
}
