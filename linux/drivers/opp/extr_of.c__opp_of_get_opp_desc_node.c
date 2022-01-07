
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

__attribute__((used)) static struct device_node *_opp_of_get_opp_desc_node(struct device_node *np,
           int index)
{

 return of_parse_phandle(np, "operating-points-v2", index);
}
