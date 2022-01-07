
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spm_driver_data {TYPE_1__* reg_data; } ;
typedef enum pm_sleep_mode { ____Placeholder_pm_sleep_mode } pm_sleep_mode ;
struct TYPE_2__ {int* start_index; } ;


 int SPM_CTL_EN ;
 int SPM_CTL_INDEX ;
 int SPM_CTL_INDEX_SHIFT ;
 int SPM_REG_SPM_CTL ;
 int spm_register_read (struct spm_driver_data*,int ) ;
 int spm_register_write_sync (struct spm_driver_data*,int ,int) ;

__attribute__((used)) static void spm_set_low_power_mode(struct spm_driver_data *drv,
     enum pm_sleep_mode mode)
{
 u32 start_index;
 u32 ctl_val;

 start_index = drv->reg_data->start_index[mode];

 ctl_val = spm_register_read(drv, SPM_REG_SPM_CTL);
 ctl_val &= ~(SPM_CTL_INDEX << SPM_CTL_INDEX_SHIFT);
 ctl_val |= start_index << SPM_CTL_INDEX_SHIFT;
 ctl_val |= SPM_CTL_EN;
 spm_register_write_sync(drv, SPM_REG_SPM_CTL, ctl_val);
}
