
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int phandle; struct device_node* sibling; struct device_node* child; struct device_node* parent; } ;


 int OF_DETACHED ;
 scalar_t__ WARN_ON (int) ;
 int __of_free_phandle_cache_entry (int ) ;
 int of_node_check_flag (struct device_node*,int ) ;
 int of_node_set_flag (struct device_node*,int ) ;

void __of_detach_node(struct device_node *np)
{
 struct device_node *parent;

 if (WARN_ON(of_node_check_flag(np, OF_DETACHED)))
  return;

 parent = np->parent;
 if (WARN_ON(!parent))
  return;

 if (parent->child == np)
  parent->child = np->sibling;
 else {
  struct device_node *prevsib;
  for (prevsib = np->parent->child;
       prevsib->sibling != np;
       prevsib = prevsib->sibling)
   ;
  prevsib->sibling = np->sibling;
 }

 of_node_set_flag(np, OF_DETACHED);


 __of_free_phandle_cache_entry(np->phandle);
}
