
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlynq_device {scalar_t__ regs_start; scalar_t__ regs_end; int local; int dev; } ;
struct platform_device {int dummy; } ;


 int device_unregister (int *) ;
 int iounmap (int ) ;
 int kfree (struct vlynq_device*) ;
 struct vlynq_device* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static int vlynq_remove(struct platform_device *pdev)
{
 struct vlynq_device *dev = platform_get_drvdata(pdev);

 device_unregister(&dev->dev);
 iounmap(dev->local);
 release_mem_region(dev->regs_start,
      dev->regs_end - dev->regs_start + 1);

 kfree(dev);

 return 0;
}
