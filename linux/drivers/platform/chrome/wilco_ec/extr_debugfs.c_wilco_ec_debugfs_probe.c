
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wilco_ec_device {int dummy; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int dir; struct wilco_ec_device* ec; } ;


 int GFP_KERNEL ;
 TYPE_1__* debug_info ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,struct wilco_ec_device*,int *) ;
 struct wilco_ec_device* dev_get_drvdata (int ) ;
 TYPE_1__* devm_kzalloc (TYPE_2__*,int,int ) ;
 int fops_h1_gpio ;
 int fops_raw ;

__attribute__((used)) static int wilco_ec_debugfs_probe(struct platform_device *pdev)
{
 struct wilco_ec_device *ec = dev_get_drvdata(pdev->dev.parent);

 debug_info = devm_kzalloc(&pdev->dev, sizeof(*debug_info), GFP_KERNEL);
 if (!debug_info)
  return 0;
 debug_info->ec = ec;
 debug_info->dir = debugfs_create_dir("wilco_ec", ((void*)0));
 if (!debug_info->dir)
  return 0;
 debugfs_create_file("raw", 0644, debug_info->dir, ((void*)0), &fops_raw);
 debugfs_create_file("h1_gpio", 0444, debug_info->dir, ec,
       &fops_h1_gpio);

 return 0;
}
