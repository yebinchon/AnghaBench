
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spm_driver_data {TYPE_1__* reg_data; scalar_t__ reg_base; } ;
typedef enum spm_reg { ____Placeholder_spm_reg } spm_reg ;
struct TYPE_2__ {scalar_t__* reg_offset; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void spm_register_write(struct spm_driver_data *drv,
     enum spm_reg reg, u32 val)
{
 if (drv->reg_data->reg_offset[reg])
  writel_relaxed(val, drv->reg_base +
    drv->reg_data->reg_offset[reg]);
}
