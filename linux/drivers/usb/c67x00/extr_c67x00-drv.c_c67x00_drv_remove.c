
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int base; } ;
struct c67x00_device {TYPE_1__ hpi; int * sie; } ;


 int C67X00_SIES ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int c67x00_ll_release (struct c67x00_device*) ;
 int c67x00_remove_sie (int *) ;
 int free_irq (int ,struct c67x00_device*) ;
 int iounmap (int ) ;
 int kfree (struct c67x00_device*) ;
 struct c67x00_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int c67x00_drv_remove(struct platform_device *pdev)
{
 struct c67x00_device *c67x00 = platform_get_drvdata(pdev);
 struct resource *res;
 int i;

 for (i = 0; i < C67X00_SIES; i++)
  c67x00_remove_sie(&c67x00->sie[i]);

 c67x00_ll_release(c67x00);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res)
  free_irq(res->start, c67x00);

 iounmap(c67x00->hpi.base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res)
  release_mem_region(res->start, resource_size(res));

 kfree(c67x00);

 return 0;
}
