
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;


 int brcmstb_machine_match ;
 struct device_node* of_find_node_by_path (char*) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int of_node_put (struct device_node*) ;

bool soc_is_brcmstb(void)
{
 const struct of_device_id *match;
 struct device_node *root;

 root = of_find_node_by_path("/");
 if (!root)
  return 0;

 match = of_match_node(brcmstb_machine_match, root);
 of_node_put(root);

 return match != ((void*)0);
}
