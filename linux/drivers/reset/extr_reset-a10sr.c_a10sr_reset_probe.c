
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct altr_a10sr {int regmap; } ;
struct TYPE_5__ {int of_node; int * ops; int nr_resets; int owner; } ;
struct a10sr_reset {TYPE_2__ rcdev; int regmap; } ;


 int A10SR_RESET_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int a10sr_reset_ops ;
 struct altr_a10sr* dev_get_drvdata (int ) ;
 struct a10sr_reset* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct a10sr_reset*) ;

__attribute__((used)) static int a10sr_reset_probe(struct platform_device *pdev)
{
 struct altr_a10sr *a10sr = dev_get_drvdata(pdev->dev.parent);
 struct a10sr_reset *a10r;

 a10r = devm_kzalloc(&pdev->dev, sizeof(struct a10sr_reset),
       GFP_KERNEL);
 if (!a10r)
  return -ENOMEM;

 a10r->rcdev.owner = THIS_MODULE;
 a10r->rcdev.nr_resets = A10SR_RESET_NUM;
 a10r->rcdev.ops = &a10sr_reset_ops;
 a10r->rcdev.of_node = pdev->dev.of_node;
 a10r->regmap = a10sr->regmap;

 platform_set_drvdata(pdev, a10r);

 return devm_reset_controller_register(&pdev->dev, &a10r->rcdev);
}
