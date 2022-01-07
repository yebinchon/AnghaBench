
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int priority; int notifier_call; } ;
struct ocelot_reset_context {TYPE_1__ restart_handler; int cpu_ctrl; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct ocelot_reset_context* devm_kzalloc (struct device*,int,int ) ;
 int ocelot_restart_handle ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int register_restart_handler (TYPE_1__*) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int ocelot_reset_probe(struct platform_device *pdev)
{
 struct ocelot_reset_context *ctx;
 struct resource *res;

 struct device *dev = &pdev->dev;
 int err;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ctx->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ctx->base))
  return PTR_ERR(ctx->base);

 ctx->cpu_ctrl = syscon_regmap_lookup_by_compatible("mscc,ocelot-cpu-syscon");
 if (IS_ERR(ctx->cpu_ctrl))
  return PTR_ERR(ctx->cpu_ctrl);

 ctx->restart_handler.notifier_call = ocelot_restart_handle;
 ctx->restart_handler.priority = 192;
 err = register_restart_handler(&ctx->restart_handler);
 if (err)
  dev_err(dev, "can't register restart notifier (err=%d)\n", err);

 return err;
}
