
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int NODE_TYPE_PHB ;
 int NODE_TYPE_SLOT ;
 int NODE_TYPE_VIO ;
 struct device_node* find_php_slot_pci_node (char*,char*) ;
 struct device_node* find_vio_slot_node (char*) ;

__attribute__((used)) static struct device_node *find_dlpar_node(char *drc_name, int *node_type)
{
 struct device_node *dn;

 dn = find_php_slot_pci_node(drc_name, "SLOT");
 if (dn) {
  *node_type = NODE_TYPE_SLOT;
  return dn;
 }

 dn = find_php_slot_pci_node(drc_name, "PHB");
 if (dn) {
  *node_type = NODE_TYPE_PHB;
  return dn;
 }

 dn = find_vio_slot_node(drc_name);
 if (dn) {
  *node_type = NODE_TYPE_VIO;
  return dn;
 }

 return ((void*)0);
}
