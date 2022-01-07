
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_regulator_priv {int clk; TYPE_1__* data; int * rst; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int nrsts; int nclks; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;
 struct uniphier_regulator_priv* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int uniphier_regulator_remove(struct platform_device *pdev)
{
 struct uniphier_regulator_priv *priv = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < priv->data->nrsts; i++)
  reset_control_assert(priv->rst[i]);

 clk_bulk_disable_unprepare(priv->data->nclks, priv->clk);

 return 0;
}
