
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vmmdev_hgcm_function_parameter_type { ____Placeholder_vmmdev_hgcm_function_parameter_type } vmmdev_hgcm_function_parameter_type ;
__attribute__((used)) static bool vbg_param_valid(enum vmmdev_hgcm_function_parameter_type type)
{
 switch (type) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
