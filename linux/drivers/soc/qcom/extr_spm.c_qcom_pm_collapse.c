
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QCOM_SCM_CPU_PWR_DOWN_L2_ON ;
 int qcom_scm_cpu_power_down (int ) ;

__attribute__((used)) static int qcom_pm_collapse(unsigned long int unused)
{
 qcom_scm_cpu_power_down(QCOM_SCM_CPU_PWR_DOWN_L2_ON);





 return -1;
}
