
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {void const* value; } ;
struct device_node {int dummy; } ;


 struct property* __of_find_property (struct device_node const*,char const*,int*) ;

const void *__of_get_property(const struct device_node *np,
         const char *name, int *lenp)
{
 struct property *pp = __of_find_property(np, name, lenp);

 return pp ? pp->value : ((void*)0);
}
