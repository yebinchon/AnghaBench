
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_tmu_data {int (* tmu_read ) (struct exynos_tmu_data*) ;int lock; int clk; int enabled; } ;


 int EAGAIN ;
 int EINVAL ;
 int MCELSIUS ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int code_to_temp (struct exynos_tmu_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct exynos_tmu_data*) ;

__attribute__((used)) static int exynos_get_temp(void *p, int *temp)
{
 struct exynos_tmu_data *data = p;
 int value, ret = 0;

 if (!data || !data->tmu_read)
  return -EINVAL;
 else if (!data->enabled)




  return -EAGAIN;

 mutex_lock(&data->lock);
 clk_enable(data->clk);

 value = data->tmu_read(data);
 if (value < 0)
  ret = value;
 else
  *temp = code_to_temp(data, value) * MCELSIUS;

 clk_disable(data->clk);
 mutex_unlock(&data->lock);

 return ret;
}
