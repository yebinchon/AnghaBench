
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int rpaphp_check_drc_props (struct device_node*,char*,int *) ;

__attribute__((used)) static struct device_node *find_vio_slot_node(char *drc_name)
{
 struct device_node *parent = of_find_node_by_name(((void*)0), "vdevice");
 struct device_node *dn = ((void*)0);
 int rc;

 if (!parent)
  return ((void*)0);

 while ((dn = of_get_next_child(parent, dn))) {
  rc = rpaphp_check_drc_props(dn, drc_name, ((void*)0));
  if (rc == 0)
   break;
 }
 of_node_put(parent);

 return dn;
}
