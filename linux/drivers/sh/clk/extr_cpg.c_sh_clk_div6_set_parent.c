
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_div_mult_table {int nr_divisors; } ;
struct clk {int parent_num; int src_width; int src_shift; int freq_table; struct clk** parent_table; } ;


 int EINVAL ;
 int ENODEV ;
 int clk_rate_table_build (struct clk*,int ,int ,struct clk_div_mult_table*,int *) ;
 int clk_reparent (struct clk*,struct clk*) ;
 struct clk_div_mult_table* clk_to_div_mult_table (struct clk*) ;
 int sh_clk_read (struct clk*) ;
 int sh_clk_write (int,struct clk*) ;

__attribute__((used)) static int sh_clk_div6_set_parent(struct clk *clk, struct clk *parent)
{
 struct clk_div_mult_table *table = clk_to_div_mult_table(clk);
 u32 value;
 int ret, i;

 if (!clk->parent_table || !clk->parent_num)
  return -EINVAL;


 for (i = 0; i < clk->parent_num; i++)
  if (clk->parent_table[i] == parent)
   break;

 if (i == clk->parent_num)
  return -ENODEV;

 ret = clk_reparent(clk, parent);
 if (ret < 0)
  return ret;

 value = sh_clk_read(clk) &
  ~(((1 << clk->src_width) - 1) << clk->src_shift);

 sh_clk_write(value | (i << clk->src_shift), clk);


 clk_rate_table_build(clk, clk->freq_table, table->nr_divisors,
        table, ((void*)0));

 return 0;
}
