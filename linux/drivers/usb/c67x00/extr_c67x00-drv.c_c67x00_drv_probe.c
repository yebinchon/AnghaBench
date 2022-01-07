
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct c67x00_platform_data {int hpi_regstep; } ;
struct TYPE_2__ {int base; int regstep; int lock; } ;
struct c67x00_device {TYPE_1__ hpi; int * sie; struct platform_device* pdev; void* pdata; } ;


 int C67X00_SIES ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int c67x00_irq ;
 int c67x00_ll_hpi_reg_init (struct c67x00_device*) ;
 int c67x00_ll_init (struct c67x00_device*) ;
 int c67x00_ll_reset (struct c67x00_device*) ;
 int c67x00_probe_sie (int *,struct c67x00_device*,int) ;
 int dev_err (int *,char*) ;
 void* dev_get_platdata (int *) ;
 int free_irq (int ,struct c67x00_device*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct c67x00_device*) ;
 struct c67x00_device* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct c67x00_device*) ;
 int release_mem_region (int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct c67x00_device*) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int c67x00_drv_probe(struct platform_device *pdev)
{
 struct c67x00_device *c67x00;
 struct c67x00_platform_data *pdata;
 struct resource *res, *res2;
 int ret, i;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 res2 = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res2)
  return -ENODEV;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata)
  return -ENODEV;

 c67x00 = kzalloc(sizeof(*c67x00), GFP_KERNEL);
 if (!c67x00)
  return -ENOMEM;

 if (!request_mem_region(res->start, resource_size(res),
    pdev->name)) {
  dev_err(&pdev->dev, "Memory region busy\n");
  ret = -EBUSY;
  goto request_mem_failed;
 }
 c67x00->hpi.base = ioremap(res->start, resource_size(res));
 if (!c67x00->hpi.base) {
  dev_err(&pdev->dev, "Unable to map HPI registers\n");
  ret = -EIO;
  goto map_failed;
 }

 spin_lock_init(&c67x00->hpi.lock);
 c67x00->hpi.regstep = pdata->hpi_regstep;
 c67x00->pdata = dev_get_platdata(&pdev->dev);
 c67x00->pdev = pdev;

 c67x00_ll_init(c67x00);
 c67x00_ll_hpi_reg_init(c67x00);

 ret = request_irq(res2->start, c67x00_irq, 0, pdev->name, c67x00);
 if (ret) {
  dev_err(&pdev->dev, "Cannot claim IRQ\n");
  goto request_irq_failed;
 }

 ret = c67x00_ll_reset(c67x00);
 if (ret) {
  dev_err(&pdev->dev, "Device reset failed\n");
  goto reset_failed;
 }

 for (i = 0; i < C67X00_SIES; i++)
  c67x00_probe_sie(&c67x00->sie[i], c67x00, i);

 platform_set_drvdata(pdev, c67x00);

 return 0;

 reset_failed:
 free_irq(res2->start, c67x00);
 request_irq_failed:
 iounmap(c67x00->hpi.base);
 map_failed:
 release_mem_region(res->start, resource_size(res));
 request_mem_failed:
 kfree(c67x00);

 return ret;
}
