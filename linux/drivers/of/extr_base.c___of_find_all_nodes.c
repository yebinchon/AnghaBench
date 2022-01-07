
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* sibling; struct device_node* parent; struct device_node* child; } ;


 struct device_node* of_root ;

struct device_node *__of_find_all_nodes(struct device_node *prev)
{
 struct device_node *np;
 if (!prev) {
  np = of_root;
 } else if (prev->child) {
  np = prev->child;
 } else {

  np = prev;
  while (np->parent && !np->sibling)
   np = np->parent;
  np = np->sibling;
 }
 return np;
}
