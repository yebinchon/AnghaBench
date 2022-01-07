
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uwb_drp_type { ____Placeholder_uwb_drp_type } uwb_drp_type ;


 int UWB_DRP_TYPE_ALIEN_BP ;
 int UWB_DRP_TYPE_PCA ;
 char const** rsv_types ;

const char *uwb_rsv_type_str(enum uwb_drp_type type)
{
 if (type < UWB_DRP_TYPE_ALIEN_BP || type > UWB_DRP_TYPE_PCA)
  return "invalid";
 return rsv_types[type];
}
