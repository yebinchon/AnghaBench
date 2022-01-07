
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct platform_device {int dev; } ;


 struct rproc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int rproc_del (struct rproc*) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int wkup_m3_rproc_remove(struct platform_device *pdev)
{
 struct rproc *rproc = platform_get_drvdata(pdev);

 rproc_del(rproc);
 rproc_free(rproc);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
