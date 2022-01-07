
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int OF_BAD_ADDR ;
 int * of_get_address (struct device_node*,int ,int *,int *) ;
 int of_translate_address (struct device_node*,int const*) ;

__attribute__((used)) static u64 of_get_phys_base(struct device_node *np)
{
 u64 size64;
 const __be32 *regaddr_p;

 regaddr_p = of_get_address(np, 0, &size64, ((void*)0));
 if (!regaddr_p)
  return OF_BAD_ADDR;

 return of_translate_address(np, regaddr_p);
}
