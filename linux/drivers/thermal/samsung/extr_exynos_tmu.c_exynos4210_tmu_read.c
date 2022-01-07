
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_tmu_data {scalar_t__ base; } ;


 int ENODATA ;
 scalar_t__ EXYNOS_TMU_REG_CURRENT_TEMP ;
 int readb (scalar_t__) ;

__attribute__((used)) static int exynos4210_tmu_read(struct exynos_tmu_data *data)
{
 int ret = readb(data->base + EXYNOS_TMU_REG_CURRENT_TEMP);


 return (ret < 75 || ret > 175) ? -ENODATA : ret;
}
