
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct lantiq_rcu_reset_priv {void* status_offset; void* reset_offset; int regmap; } ;
typedef int __be32 ;
struct TYPE_2__ {int parent; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* __be32_to_cpu (int const) ;
 int dev_err (struct device*,char*) ;
 int * of_get_address (TYPE_1__*,int,int *,int *) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int lantiq_rcu_reset_of_parse(struct platform_device *pdev,
          struct lantiq_rcu_reset_priv *priv)
{
 struct device *dev = &pdev->dev;
 const __be32 *offset;

 priv->regmap = syscon_node_to_regmap(dev->of_node->parent);
 if (IS_ERR(priv->regmap)) {
  dev_err(&pdev->dev, "Failed to lookup RCU regmap\n");
  return PTR_ERR(priv->regmap);
 }

 offset = of_get_address(dev->of_node, 0, ((void*)0), ((void*)0));
 if (!offset) {
  dev_err(&pdev->dev, "Failed to get RCU reset offset\n");
  return -ENOENT;
 }
 priv->reset_offset = __be32_to_cpu(*offset);

 offset = of_get_address(dev->of_node, 1, ((void*)0), ((void*)0));
 if (!offset) {
  dev_err(&pdev->dev, "Failed to get RCU status offset\n");
  return -ENOENT;
 }
 priv->status_offset = __be32_to_cpu(*offset);

 return 0;
}
