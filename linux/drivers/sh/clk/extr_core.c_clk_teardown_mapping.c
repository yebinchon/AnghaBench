
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mapping {int ref; } ;
struct clk {int * mapped_reg; struct clk_mapping* mapping; } ;


 int clk_destroy_mapping ;
 struct clk_mapping dummy_mapping ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void clk_teardown_mapping(struct clk *clk)
{
 struct clk_mapping *mapping = clk->mapping;


 if (mapping == &dummy_mapping)
  goto out;

 kref_put(&mapping->ref, clk_destroy_mapping);
 clk->mapping = ((void*)0);
out:
 clk->mapped_reg = ((void*)0);
}
