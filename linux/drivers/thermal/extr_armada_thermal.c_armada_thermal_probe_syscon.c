
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct armada_thermal_priv {int syscon; } ;
struct TYPE_3__ {int of_node; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int armada_thermal_probe_syscon(struct platform_device *pdev,
           struct armada_thermal_priv *priv)
{
 priv->syscon = syscon_node_to_regmap(pdev->dev.parent->of_node);
 return PTR_ERR_OR_ZERO(priv->syscon);
}
