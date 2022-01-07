
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_count_phandle_with_args (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

__attribute__((used)) static bool of_coupling_find_node(struct device_node *src,
      struct device_node *to_find,
      int *index)
{
 int n_phandles, i;
 bool found = 0;

 n_phandles = of_count_phandle_with_args(src,
      "regulator-coupled-with",
      ((void*)0));

 for (i = 0; i < n_phandles; i++) {
  struct device_node *tmp = of_parse_phandle(src,
        "regulator-coupled-with", i);

  if (!tmp)
   break;


  if (tmp == to_find)
   found = 1;

  of_node_put(tmp);

  if (found) {
   *index = i;
   break;
  }
 }

 return found;
}
