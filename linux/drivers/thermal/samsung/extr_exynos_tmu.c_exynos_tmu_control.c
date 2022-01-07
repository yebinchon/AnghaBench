
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct exynos_tmu_data {int enabled; int lock; int clk; int (* tmu_control ) (struct platform_device*,int) ;} ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*,int) ;

__attribute__((used)) static void exynos_tmu_control(struct platform_device *pdev, bool on)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);

 mutex_lock(&data->lock);
 clk_enable(data->clk);
 data->tmu_control(pdev, on);
 data->enabled = on;
 clk_disable(data->clk);
 mutex_unlock(&data->lock);
}
