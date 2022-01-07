
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_recover {int nodes_count; struct dlm_config_node* nodes; } ;
struct dlm_config_node {int nodeid; } ;



__attribute__((used)) static struct dlm_config_node *find_config_node(struct dlm_recover *rv,
      int nodeid)
{
 int i;

 for (i = 0; i < rv->nodes_count; i++) {
  if (rv->nodes[i].nodeid == nodeid)
   return &rv->nodes[i];
 }
 return ((void*)0);
}
