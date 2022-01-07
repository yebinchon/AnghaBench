
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int FW_FEATURE_DRC_INFO ;
 scalar_t__ firmware_has_feature (int ) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int rpaphp_check_drc_props_v1 (struct device_node*,char*,char*,unsigned int const) ;
 int rpaphp_check_drc_props_v2 (struct device_node*,char*,char*,unsigned int const) ;

int rpaphp_check_drc_props(struct device_node *dn, char *drc_name,
   char *drc_type)
{
 const unsigned int *my_index;

 my_index = of_get_property(dn, "ibm,my-drc-index", ((void*)0));
 if (!my_index) {

  return -EINVAL;
 }

 if (firmware_has_feature(FW_FEATURE_DRC_INFO))
  return rpaphp_check_drc_props_v2(dn, drc_name, drc_type,
      *my_index);
 else
  return rpaphp_check_drc_props_v1(dn, drc_name, drc_type,
      *my_index);
}
