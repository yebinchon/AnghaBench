
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be32 ;


 int of_bus_default_translate (int *,int ,int) ;

__attribute__((used)) static int of_bus_isa_translate(__be32 *addr, u64 offset, int na)
{
 return of_bus_default_translate(addr + 1, offset, na - 1);
}
