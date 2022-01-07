
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int WARN (int,char*) ;
 int base ;
 int dev_err (TYPE_1__*,char*,int) ;
 int iounmap (int ) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 int pcu_base ;
 int register_restart_handler (int *) ;
 int zx_restart_nb ;

__attribute__((used)) static int zx_reboot_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 int err;

 base = of_iomap(np, 0);
 if (!base) {
  WARN(1, "failed to map base address");
  return -ENODEV;
 }

 np = of_find_compatible_node(((void*)0), ((void*)0), "zte,zx296702-pcu");
 pcu_base = of_iomap(np, 0);
 of_node_put(np);
 if (!pcu_base) {
  iounmap(base);
  WARN(1, "failed to map pcu_base address");
  return -ENODEV;
 }

 err = register_restart_handler(&zx_restart_nb);
 if (err) {
  iounmap(base);
  iounmap(pcu_base);
  dev_err(&pdev->dev, "Register restart handler failed(err=%d)\n",
   err);
 }

 return err;
}
