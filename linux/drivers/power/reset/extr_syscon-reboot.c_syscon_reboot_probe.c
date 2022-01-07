
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; int notifier_call; } ;
struct syscon_reboot_context {int offset; int value; int mask; TYPE_1__ restart_handler; int map; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 struct syscon_reboot_context* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int register_restart_handler (TYPE_1__*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;
 int syscon_restart_handle ;

__attribute__((used)) static int syscon_reboot_probe(struct platform_device *pdev)
{
 struct syscon_reboot_context *ctx;
 struct device *dev = &pdev->dev;
 int mask_err, value_err;
 int err;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->map = syscon_regmap_lookup_by_phandle(dev->of_node, "regmap");
 if (IS_ERR(ctx->map))
  return PTR_ERR(ctx->map);

 if (of_property_read_u32(pdev->dev.of_node, "offset", &ctx->offset))
  return -EINVAL;

 value_err = of_property_read_u32(pdev->dev.of_node, "value", &ctx->value);
 mask_err = of_property_read_u32(pdev->dev.of_node, "mask", &ctx->mask);
 if (value_err && mask_err) {
  dev_err(dev, "unable to read 'value' and 'mask'");
  return -EINVAL;
 }

 if (value_err) {

  ctx->value = ctx->mask;
  ctx->mask = 0xFFFFFFFF;
 } else if (mask_err) {

  ctx->mask = 0xFFFFFFFF;
 }

 ctx->restart_handler.notifier_call = syscon_restart_handle;
 ctx->restart_handler.priority = 192;
 err = register_restart_handler(&ctx->restart_handler);
 if (err)
  dev_err(dev, "can't register restart notifier (err=%d)\n", err);

 return err;
}
