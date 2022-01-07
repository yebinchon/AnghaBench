
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spm_driver_data {int dummy; } ;


 int PM_SLEEP_MODE_SPC ;
 int PM_SLEEP_MODE_STBY ;
 struct spm_driver_data* __this_cpu_read (int ) ;
 int cpu_spm_drv ;
 int cpu_suspend (int ,int ) ;
 int qcom_pm_collapse ;
 int spm_set_low_power_mode (struct spm_driver_data*,int ) ;

__attribute__((used)) static int qcom_cpu_spc(void)
{
 int ret;
 struct spm_driver_data *drv = __this_cpu_read(cpu_spm_drv);

 spm_set_low_power_mode(drv, PM_SLEEP_MODE_SPC);
 ret = cpu_suspend(0, qcom_pm_collapse);






 spm_set_low_power_mode(drv, PM_SLEEP_MODE_STBY);

 return ret;
}
