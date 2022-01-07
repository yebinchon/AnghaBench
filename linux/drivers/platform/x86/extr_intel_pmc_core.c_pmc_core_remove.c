
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_dev {int regbase; int lock; } ;
struct platform_device {int dummy; } ;


 int iounmap (int ) ;
 int mutex_destroy (int *) ;
 struct pmc_dev* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pmc_core_dbgfs_unregister (struct pmc_dev*) ;

__attribute__((used)) static int pmc_core_remove(struct platform_device *pdev)
{
 struct pmc_dev *pmcdev = platform_get_drvdata(pdev);

 pmc_core_dbgfs_unregister(pmcdev);
 platform_set_drvdata(pdev, ((void*)0));
 mutex_destroy(&pmcdev->lock);
 iounmap(pmcdev->regbase);
 return 0;
}
