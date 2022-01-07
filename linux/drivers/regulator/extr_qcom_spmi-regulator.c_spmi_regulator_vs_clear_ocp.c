
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_regulator {int vs_enable_time; } ;


 int SPMI_COMMON_DISABLE ;
 int SPMI_COMMON_ENABLE ;
 int SPMI_COMMON_ENABLE_MASK ;
 int SPMI_COMMON_REG_ENABLE ;
 int ktime_get () ;
 int spmi_vreg_update_bits (struct spmi_regulator*,int ,int ,int ) ;

__attribute__((used)) static int spmi_regulator_vs_clear_ocp(struct spmi_regulator *vreg)
{
 int ret;

 ret = spmi_vreg_update_bits(vreg, SPMI_COMMON_REG_ENABLE,
  SPMI_COMMON_DISABLE, SPMI_COMMON_ENABLE_MASK);

 vreg->vs_enable_time = ktime_get();

 ret = spmi_vreg_update_bits(vreg, SPMI_COMMON_REG_ENABLE,
  SPMI_COMMON_ENABLE, SPMI_COMMON_ENABLE_MASK);

 return ret;
}
