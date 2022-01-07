
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int of_reset_n_cells; int nr_resets; int of_node; int * ops; int owner; } ;
struct hsdk_rst {TYPE_1__ rcdev; int lock; void* regs_rst; void* regs_ctl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HSDK_MAX_RESETS ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 void* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct hsdk_rst* devm_kzalloc (TYPE_2__*,int,int ) ;
 int hsdk_reset_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int reset_controller_register (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hsdk_reset_probe(struct platform_device *pdev)
{
 struct hsdk_rst *rst;
 struct resource *mem;

 rst = devm_kzalloc(&pdev->dev, sizeof(*rst), GFP_KERNEL);
 if (!rst)
  return -ENOMEM;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rst->regs_ctl = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(rst->regs_ctl))
  return PTR_ERR(rst->regs_ctl);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 rst->regs_rst = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(rst->regs_rst))
  return PTR_ERR(rst->regs_rst);

 spin_lock_init(&rst->lock);

 rst->rcdev.owner = THIS_MODULE;
 rst->rcdev.ops = &hsdk_reset_ops;
 rst->rcdev.of_node = pdev->dev.of_node;
 rst->rcdev.nr_resets = HSDK_MAX_RESETS;
 rst->rcdev.of_reset_n_cells = 1;

 return reset_controller_register(&rst->rcdev);
}
