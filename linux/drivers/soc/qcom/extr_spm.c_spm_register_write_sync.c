
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct spm_driver_data {TYPE_1__* reg_data; scalar_t__ reg_base; } ;
typedef enum spm_reg { ____Placeholder_spm_reg } spm_reg ;
struct TYPE_2__ {scalar_t__* reg_offset; } ;


 int cpu_relax () ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void spm_register_write_sync(struct spm_driver_data *drv,
     enum spm_reg reg, u32 val)
{
 u32 ret;

 if (!drv->reg_data->reg_offset[reg])
  return;

 do {
  writel_relaxed(val, drv->reg_base +
    drv->reg_data->reg_offset[reg]);
  ret = readl_relaxed(drv->reg_base +
    drv->reg_data->reg_offset[reg]);
  if (ret == val)
   break;
  cpu_relax();
 } while (1);
}
