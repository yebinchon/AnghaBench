
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int nr_resets; int of_node; int * ops; int owner; } ;
struct meson_reset {TYPE_2__ rcdev; int lock; int reg_base; } ;


 int BITS_PER_REG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REG_COUNT ;
 int THIS_MODULE ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct meson_reset* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_2__*) ;
 int meson_reset_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct meson_reset*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int meson_reset_probe(struct platform_device *pdev)
{
 struct meson_reset *data;
 struct resource *res;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 data->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(data->reg_base))
  return PTR_ERR(data->reg_base);

 platform_set_drvdata(pdev, data);

 spin_lock_init(&data->lock);

 data->rcdev.owner = THIS_MODULE;
 data->rcdev.nr_resets = REG_COUNT * BITS_PER_REG;
 data->rcdev.ops = &meson_reset_ops;
 data->rcdev.of_node = pdev->dev.of_node;

 return devm_reset_controller_register(&pdev->dev, &data->rcdev);
}
