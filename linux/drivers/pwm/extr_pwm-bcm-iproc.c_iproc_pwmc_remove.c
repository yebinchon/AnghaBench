
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iproc_pwmc {int chip; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct iproc_pwmc* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int iproc_pwmc_remove(struct platform_device *pdev)
{
 struct iproc_pwmc *ip = platform_get_drvdata(pdev);

 clk_disable_unprepare(ip->clk);

 return pwmchip_remove(&ip->chip);
}
