
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct of_bus {scalar_t__ (* map ) (int *,int const*,int,int,int) ;int (* translate ) (int *,scalar_t__,int) ;} ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 scalar_t__ OF_BAD_ADDR ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;
 int of_dump_addr (char*,int *,int) ;
 int of_empty_ranges_quirk (struct device_node*) ;
 int * of_get_property (struct device_node*,char const*,unsigned int*) ;
 scalar_t__ of_read_number (int *,int) ;
 int pr_debug (char*,...) ;
 scalar_t__ stub1 (int *,int const*,int,int,int) ;
 int stub2 (int *,scalar_t__,int) ;

__attribute__((used)) static int of_translate_one(struct device_node *parent, struct of_bus *bus,
       struct of_bus *pbus, __be32 *addr,
       int na, int ns, int pna, const char *rprop)
{
 const __be32 *ranges;
 unsigned int rlen;
 int rone;
 u64 offset = OF_BAD_ADDR;
 ranges = of_get_property(parent, rprop, &rlen);
 if (ranges == ((void*)0) && !of_empty_ranges_quirk(parent)) {
  pr_debug("no ranges; cannot translate\n");
  return 1;
 }
 if (ranges == ((void*)0) || rlen == 0) {
  offset = of_read_number(addr, na);
  memset(addr, 0, pna * 4);
  pr_debug("empty ranges; 1:1 translation\n");
  goto finish;
 }

 pr_debug("walking ranges...\n");


 rlen /= 4;
 rone = na + pna + ns;
 for (; rlen >= rone; rlen -= rone, ranges += rone) {
  offset = bus->map(addr, ranges, na, ns, pna);
  if (offset != OF_BAD_ADDR)
   break;
 }
 if (offset == OF_BAD_ADDR) {
  pr_debug("not found !\n");
  return 1;
 }
 memcpy(addr, ranges + na, 4 * pna);

 finish:
 of_dump_addr("parent translation for:", addr, pna);
 pr_debug("with offset: %llx\n", (unsigned long long)offset);


 return pbus->translate(addr, offset, pna);
}
