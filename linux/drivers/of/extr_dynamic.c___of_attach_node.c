
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {char* name; TYPE_1__* parent; struct device_node* sibling; int * child; int phandle; } ;
typedef int __be32 ;
struct TYPE_2__ {struct device_node* child; } ;


 int CONFIG_PPC_PSERIES ;
 scalar_t__ IS_ENABLED (int ) ;
 int OF_DETACHED ;
 int OF_OVERLAY ;
 void* __of_get_property (struct device_node*,char*,int*) ;
 int be32_to_cpup (int const*) ;
 int of_node_check_flag (struct device_node*,int ) ;
 int of_node_clear_flag (struct device_node*,int ) ;

__attribute__((used)) static void __of_attach_node(struct device_node *np)
{
 const __be32 *phandle;
 int sz;

 if (!of_node_check_flag(np, OF_OVERLAY)) {
  np->name = __of_get_property(np, "name", ((void*)0));
  if (!np->name)
   np->name = "<NULL>";

  phandle = __of_get_property(np, "phandle", &sz);
  if (!phandle)
   phandle = __of_get_property(np, "linux,phandle", &sz);
  if (IS_ENABLED(CONFIG_PPC_PSERIES) && !phandle)
   phandle = __of_get_property(np, "ibm,phandle", &sz);
  if (phandle && (sz >= 4))
   np->phandle = be32_to_cpup(phandle);
  else
   np->phandle = 0;
 }

 np->child = ((void*)0);
 np->sibling = np->parent->child;
 np->parent->child = np;
 of_node_clear_flag(np, OF_DETACHED);
}
