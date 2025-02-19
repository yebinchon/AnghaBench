
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sunxi_sramc_variant {scalar_t__ has_emac_clock; } ;
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int S_IRUGO ;
 struct regmap* base ;
 struct dentry* debugfs_create_file (char*,int ,int *,int *,int *) ;
 struct regmap* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct regmap* devm_regmap_init_mmio (TYPE_1__*,struct regmap*,int *) ;
 struct sunxi_sramc_variant* of_device_get_match_data (TYPE_1__*) ;
 int of_platform_populate (int ,int *,int *,TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 TYPE_1__* sram_dev ;
 int sunxi_sram_emac_clock_regmap ;
 int sunxi_sram_fops ;

__attribute__((used)) static int sunxi_sram_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct dentry *d;
 struct regmap *emac_clock;
 const struct sunxi_sramc_variant *variant;

 sram_dev = &pdev->dev;

 variant = of_device_get_match_data(&pdev->dev);
 if (!variant)
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(base))
  return PTR_ERR(base);

 of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);

 d = debugfs_create_file("sram", S_IRUGO, ((void*)0), ((void*)0),
    &sunxi_sram_fops);
 if (!d)
  return -ENOMEM;

 if (variant->has_emac_clock) {
  emac_clock = devm_regmap_init_mmio(&pdev->dev, base,
         &sunxi_sram_emac_clock_regmap);

  if (IS_ERR(emac_clock))
   return PTR_ERR(emac_clock);
 }

 return 0;
}
