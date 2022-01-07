
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct parport {int irq; } ;
struct ax_drvdata {TYPE_1__* io; int base; } ;
struct TYPE_2__ {int start; } ;


 int free_irq (int ,struct parport*) ;
 int iounmap (int ) ;
 int kfree (struct ax_drvdata*) ;
 int parport_remove_port (struct parport*) ;
 struct parport* platform_get_drvdata (struct platform_device*) ;
 struct ax_drvdata* pp_to_drv (struct parport*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int parport_ax88796_remove(struct platform_device *pdev)
{
 struct parport *p = platform_get_drvdata(pdev);
 struct ax_drvdata *dd = pp_to_drv(p);

 free_irq(p->irq, p);
 parport_remove_port(p);
 iounmap(dd->base);
 release_mem_region(dd->io->start, resource_size(dd->io));
 kfree(dd);

 return 0;
}
