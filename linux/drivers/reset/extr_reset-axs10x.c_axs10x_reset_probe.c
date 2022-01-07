
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
struct axs10x_rst {TYPE_2__ rcdev; int lock; int regs_rst; } ;


 int AXS10X_MAX_RESETS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int axs10x_reset_ops ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct axs10x_rst* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_2__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int axs10x_reset_probe(struct platform_device *pdev)
{
 struct axs10x_rst *rst;
 struct resource *mem;

 rst = devm_kzalloc(&pdev->dev, sizeof(*rst), GFP_KERNEL);
 if (!rst)
  return -ENOMEM;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rst->regs_rst = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(rst->regs_rst))
  return PTR_ERR(rst->regs_rst);

 spin_lock_init(&rst->lock);

 rst->rcdev.owner = THIS_MODULE;
 rst->rcdev.ops = &axs10x_reset_ops;
 rst->rcdev.of_node = pdev->dev.of_node;
 rst->rcdev.nr_resets = AXS10X_MAX_RESETS;

 return devm_reset_controller_register(&pdev->dev, &rst->rcdev);
}
