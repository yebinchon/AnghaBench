
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct keystone_rproc {int rproc; } ;


 int of_reserved_mem_device_release (int *) ;
 struct keystone_rproc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int rproc_del (int ) ;
 int rproc_free (int ) ;

__attribute__((used)) static int keystone_rproc_remove(struct platform_device *pdev)
{
 struct keystone_rproc *ksproc = platform_get_drvdata(pdev);

 rproc_del(ksproc->rproc);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 rproc_free(ksproc->rproc);
 of_reserved_mem_device_release(&pdev->dev);

 return 0;
}
