
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENOENT ;
 int __be32_to_cpu (int const) ;
 int * of_get_address (struct device_node*,int ,int *,int *) ;

__attribute__((used)) static int anybus_of_get_host_idx(struct device_node *np)
{
 const __be32 *host_idx;

 host_idx = of_get_address(np, 0, ((void*)0), ((void*)0));
 if (!host_idx)
  return -ENOENT;
 return __be32_to_cpu(*host_idx);
}
