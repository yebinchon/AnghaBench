
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mapping {scalar_t__ phys; scalar_t__ base; int ref; int len; } ;
struct clk {struct clk_mapping* mapping; scalar_t__ enable_reg; scalar_t__ mapped_reg; int parent; } ;
typedef scalar_t__ phys_addr_t ;


 int BUG_ON (int) ;
 int ENXIO ;
 struct clk_mapping dummy_mapping ;
 scalar_t__ ioremap_nocache (scalar_t__,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct clk* lookup_root_clock (struct clk*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int clk_establish_mapping(struct clk *clk)
{
 struct clk_mapping *mapping = clk->mapping;




 if (!mapping) {
  struct clk *clkp;




  if (!clk->parent) {
   clk->mapping = &dummy_mapping;
   goto out;
  }





  clkp = lookup_root_clock(clk);
  mapping = clkp->mapping;
  BUG_ON(!mapping);
 }




 if (!mapping->base && mapping->phys) {
  kref_init(&mapping->ref);

  mapping->base = ioremap_nocache(mapping->phys, mapping->len);
  if (unlikely(!mapping->base))
   return -ENXIO;
 } else if (mapping->base) {



  kref_get(&mapping->ref);
 }

 clk->mapping = mapping;
out:
 clk->mapped_reg = clk->mapping->base;
 clk->mapped_reg += (phys_addr_t)clk->enable_reg - clk->mapping->phys;
 return 0;
}
