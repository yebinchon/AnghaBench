
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum vmmdev_hgcm_function_parameter_type { ____Placeholder_vmmdev_hgcm_function_parameter_type } vmmdev_hgcm_function_parameter_type ;


 int VMMDEV_HGCM_F_PARM_DIRECTION_BOTH ;
 int VMMDEV_HGCM_F_PARM_DIRECTION_FROM_HOST ;
 int VMMDEV_HGCM_F_PARM_DIRECTION_TO_HOST ;






 int WARN_ON (int) ;

__attribute__((used)) static u32 hgcm_call_linear_addr_type_to_pagelist_flags(
 enum vmmdev_hgcm_function_parameter_type type)
{
 switch (type) {
 default:
  WARN_ON(1);

 case 133:
 case 131:
  return VMMDEV_HGCM_F_PARM_DIRECTION_BOTH;

 case 132:
 case 130:
  return VMMDEV_HGCM_F_PARM_DIRECTION_TO_HOST;

 case 128:
 case 129:
  return VMMDEV_HGCM_F_PARM_DIRECTION_FROM_HOST;
 }
}
