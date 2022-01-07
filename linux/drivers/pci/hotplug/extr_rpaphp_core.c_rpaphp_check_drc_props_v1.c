
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int parent; } ;


 int EINVAL ;
 int be32_to_cpu (int const) ;
 int get_children_props (int ,int const**,int const**,int const**,int const**) ;
 int strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int rpaphp_check_drc_props_v1(struct device_node *dn, char *drc_name,
    char *drc_type, unsigned int my_index)
{
 char *name_tmp, *type_tmp;
 const int *indexes, *names;
 const int *types, *domains;
 int i, rc;

 rc = get_children_props(dn->parent, &indexes, &names, &types, &domains);
 if (rc < 0) {
  return -EINVAL;
 }

 name_tmp = (char *) &names[1];
 type_tmp = (char *) &types[1];


 for (i = 0; i < be32_to_cpu(indexes[0]); i++) {
  if ((unsigned int) indexes[i + 1] == my_index)
   break;

  name_tmp += (strlen(name_tmp) + 1);
  type_tmp += (strlen(type_tmp) + 1);
 }

 if (((drc_name == ((void*)0)) || (drc_name && !strcmp(drc_name, name_tmp))) &&
     ((drc_type == ((void*)0)) || (drc_type && !strcmp(drc_type, type_tmp))))
  return 0;

 return -EINVAL;
}
