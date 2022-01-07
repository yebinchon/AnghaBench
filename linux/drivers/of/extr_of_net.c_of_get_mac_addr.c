
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {scalar_t__ length; void const* value; } ;
struct device_node {int dummy; } ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ is_valid_ether_addr (void const*) ;
 struct property* of_find_property (struct device_node*,char const*,int *) ;

__attribute__((used)) static const void *of_get_mac_addr(struct device_node *np, const char *name)
{
 struct property *pp = of_find_property(np, name, ((void*)0));

 if (pp && pp->length == ETH_ALEN && is_valid_ether_addr(pp->value))
  return pp->value;
 return ((void*)0);
}
