
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_device {int chip; } ;
struct platform_device {int dev; } ;


 struct tpu_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int tpu_remove(struct platform_device *pdev)
{
 struct tpu_device *tpu = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&tpu->chip);
 if (ret)
  return ret;

 pm_runtime_disable(&pdev->dev);

 return 0;
}
