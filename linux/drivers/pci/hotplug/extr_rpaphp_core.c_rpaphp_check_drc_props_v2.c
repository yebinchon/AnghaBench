
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct of_drc_info {unsigned int last_drc_index; char* drc_name_prefix; char* drc_type; } ;
struct device_node {int parent; } ;
typedef int __be32 ;


 int EINVAL ;
 int MAX_DRC_NAME_LEN ;
 struct property* of_find_property (int ,char*,int *) ;
 int * of_prop_next_u32 (struct property*,int *,unsigned int*) ;
 int of_read_drc_info_cell (struct property**,int const**,struct of_drc_info*) ;
 int sprintf (char*,char*,char*,unsigned int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
    char *drc_type, unsigned int my_index)
{
 struct property *info;
 unsigned int entries;
 struct of_drc_info drc;
 const __be32 *value;
 char cell_drc_name[MAX_DRC_NAME_LEN];
 int j;

 info = of_find_property(dn->parent, "ibm,drc-info", ((void*)0));
 if (info == ((void*)0))
  return -EINVAL;

 value = of_prop_next_u32(info, ((void*)0), &entries);
 if (!value)
  return -EINVAL;

 for (j = 0; j < entries; j++) {
  of_read_drc_info_cell(&info, &value, &drc);




  if (my_index <= drc.last_drc_index) {
   sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix,
    my_index);
   break;
  }
 }

 if (((drc_name == ((void*)0)) ||
      (drc_name && !strcmp(drc_name, cell_drc_name))) &&
     ((drc_type == ((void*)0)) ||
      (drc_type && !strcmp(drc_type, drc.drc_type))))
  return 0;

 return -EINVAL;
}
