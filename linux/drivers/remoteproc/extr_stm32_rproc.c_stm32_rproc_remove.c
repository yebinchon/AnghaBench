
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int power; } ;
struct platform_device {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 struct rproc* platform_get_drvdata (struct platform_device*) ;
 int rproc_del (struct rproc*) ;
 int rproc_free (struct rproc*) ;
 int rproc_shutdown (struct rproc*) ;
 int stm32_rproc_free_mbox (struct rproc*) ;

__attribute__((used)) static int stm32_rproc_remove(struct platform_device *pdev)
{
 struct rproc *rproc = platform_get_drvdata(pdev);

 if (atomic_read(&rproc->power) > 0)
  rproc_shutdown(rproc);

 rproc_del(rproc);
 stm32_rproc_free_mbox(rproc);
 rproc_free(rproc);

 return 0;
}
