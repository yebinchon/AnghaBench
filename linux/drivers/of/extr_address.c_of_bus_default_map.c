
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int const __be32 ;


 scalar_t__ OF_BAD_ADDR ;
 scalar_t__ of_read_number (int const*,int) ;
 int pr_debug (char*,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static u64 of_bus_default_map(__be32 *addr, const __be32 *range,
  int na, int ns, int pna)
{
 u64 cp, s, da;

 cp = of_read_number(range, na);
 s = of_read_number(range + na + pna, ns);
 da = of_read_number(addr, na);

 pr_debug("default map, cp=%llx, s=%llx, da=%llx\n",
   (unsigned long long)cp, (unsigned long long)s,
   (unsigned long long)da);

 if (da < cp || da >= (cp + s))
  return OF_BAD_ADDR;
 return da - cp;
}
