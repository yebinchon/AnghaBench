
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 char* __of_get_property (struct device_node const*,char*,int *) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static bool __of_node_is_type(const struct device_node *np, const char *type)
{
 const char *match = __of_get_property(np, "device_type", ((void*)0));

 return np && match && type && !strcmp(match, type);
}
