
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 int dev_err (TYPE_1__*,char*,int) ;
 int iounmap (int ) ;
 int of_iomap (int ,int) ;
 int register_restart_handler (int *) ;
 int rmobile_reset_nb ;
 int sysc_base2 ;

__attribute__((used)) static int rmobile_reset_probe(struct platform_device *pdev)
{
 int error;

 sysc_base2 = of_iomap(pdev->dev.of_node, 1);
 if (!sysc_base2)
  return -ENODEV;

 error = register_restart_handler(&rmobile_reset_nb);
 if (error) {
  dev_err(&pdev->dev,
   "cannot register restart handler (err=%d)\n", error);
  goto fail_unmap;
 }

 return 0;

fail_unmap:
 iounmap(sysc_base2);
 return error;
}
