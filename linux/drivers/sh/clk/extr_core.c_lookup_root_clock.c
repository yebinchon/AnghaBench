
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;



__attribute__((used)) static struct clk *lookup_root_clock(struct clk *clk)
{
 while (clk->parent)
  clk = clk->parent;

 return clk;
}
