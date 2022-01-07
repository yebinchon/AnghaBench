
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int const __be32 ;


 scalar_t__ OF_BAD_ADDR ;
 int const cpu_to_be32 (int) ;
 scalar_t__ of_read_number (int const*,int) ;
 int pr_debug (char*,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static u64 of_bus_isa_map(__be32 *addr, const __be32 *range, int na, int ns,
  int pna)
{
 u64 cp, s, da;


 if ((addr[0] ^ range[0]) & cpu_to_be32(1))
  return OF_BAD_ADDR;


 cp = of_read_number(range + 1, na - 1);
 s = of_read_number(range + na + pna, ns);
 da = of_read_number(addr + 1, na - 1);

 pr_debug("ISA map, cp=%llx, s=%llx, da=%llx\n",
   (unsigned long long)cp, (unsigned long long)s,
   (unsigned long long)da);

 if (da < cp || da >= (cp + s))
  return OF_BAD_ADDR;
 return da - cp;
}
