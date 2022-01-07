
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_wzrd {int axi_clk; int nb; int clk_in1; scalar_t__ speed_grade; int * clks_internal; int * clkout; } ;


 int WZRD_NUM_OUTPUTS ;
 int clk_disable_unprepare (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 int clk_unregister (int ) ;
 int of_clk_del_provider (int ) ;
 struct clk_wzrd* platform_get_drvdata (struct platform_device*) ;
 int wzrd_clk_int_max ;

__attribute__((used)) static int clk_wzrd_remove(struct platform_device *pdev)
{
 int i;
 struct clk_wzrd *clk_wzrd = platform_get_drvdata(pdev);

 of_clk_del_provider(pdev->dev.of_node);

 for (i = 0; i < WZRD_NUM_OUTPUTS; i++)
  clk_unregister(clk_wzrd->clkout[i]);
 for (i = 0; i < wzrd_clk_int_max; i++)
  clk_unregister(clk_wzrd->clks_internal[i]);

 if (clk_wzrd->speed_grade) {
  clk_notifier_unregister(clk_wzrd->axi_clk, &clk_wzrd->nb);
  clk_notifier_unregister(clk_wzrd->clk_in1, &clk_wzrd->nb);
 }

 clk_disable_unprepare(clk_wzrd->axi_clk);

 return 0;
}
