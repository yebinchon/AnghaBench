
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hidg_func_node {int node; struct hidg_func_descriptor* func; } ;
struct hidg_func_descriptor {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct hidg_func_descriptor* dev_get_platdata (int *) ;
 int hidg_func_list ;
 struct hidg_func_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int hidg_plat_driver_probe(struct platform_device *pdev)
{
 struct hidg_func_descriptor *func = dev_get_platdata(&pdev->dev);
 struct hidg_func_node *entry;

 if (!func) {
  dev_err(&pdev->dev, "Platform data missing\n");
  return -ENODEV;
 }

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->func = func;
 list_add_tail(&entry->node, &hidg_func_list);

 return 0;
}
