
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_7__ {int name; } ;


 TYPE_2__ dpaa2_aiop_console_dev ;
 TYPE_2__ dpaa2_mc_console_dev ;
 int mc_base_addr ;
 int misc_deregister (TYPE_2__*) ;
 int misc_register (TYPE_2__*) ;
 int of_address_to_resource (int ,int ,int *) ;
 int pr_err (char*,int ,...) ;

__attribute__((used)) static int dpaa2_console_probe(struct platform_device *pdev)
{
 int error;

 error = of_address_to_resource(pdev->dev.of_node, 0, &mc_base_addr);
 if (error < 0) {
  pr_err("of_address_to_resource() failed for %pOF with %d\n",
         pdev->dev.of_node, error);
  return error;
 }

 error = misc_register(&dpaa2_mc_console_dev);
 if (error) {
  pr_err("cannot register device %s\n",
         dpaa2_mc_console_dev.name);
  goto err_register_mc;
 }

 error = misc_register(&dpaa2_aiop_console_dev);
 if (error) {
  pr_err("cannot register device %s\n",
         dpaa2_aiop_console_dev.name);
  goto err_register_aiop;
 }

 return 0;

err_register_aiop:
 misc_deregister(&dpaa2_mc_console_dev);
err_register_mc:
 return error;
}
