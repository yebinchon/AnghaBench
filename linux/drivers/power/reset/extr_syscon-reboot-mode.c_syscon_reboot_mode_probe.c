
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int write; TYPE_2__* dev; } ;
struct syscon_reboot_mode {int mask; int offset; TYPE_3__ reboot; int map; } ;
struct TYPE_7__ {int of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct syscon_reboot_mode* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_reboot_mode_register (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int syscon_node_to_regmap (int ) ;
 int syscon_reboot_mode_write ;

__attribute__((used)) static int syscon_reboot_mode_probe(struct platform_device *pdev)
{
 int ret;
 struct syscon_reboot_mode *syscon_rbm;

 syscon_rbm = devm_kzalloc(&pdev->dev, sizeof(*syscon_rbm), GFP_KERNEL);
 if (!syscon_rbm)
  return -ENOMEM;

 syscon_rbm->reboot.dev = &pdev->dev;
 syscon_rbm->reboot.write = syscon_reboot_mode_write;
 syscon_rbm->mask = 0xffffffff;

 syscon_rbm->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
 if (IS_ERR(syscon_rbm->map))
  return PTR_ERR(syscon_rbm->map);

 if (of_property_read_u32(pdev->dev.of_node, "offset",
     &syscon_rbm->offset))
  return -EINVAL;

 of_property_read_u32(pdev->dev.of_node, "mask", &syscon_rbm->mask);

 ret = devm_reboot_mode_register(&pdev->dev, &syscon_rbm->reboot);
 if (ret)
  dev_err(&pdev->dev, "can't register reboot mode\n");

 return ret;
}
