
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int mapped_reg; } ;


 int CLK_ENABLE_REG_16BIT ;
 int CLK_ENABLE_REG_8BIT ;
 unsigned int ioread16 (int ) ;
 unsigned int ioread32 (int ) ;
 unsigned int ioread8 (int ) ;

__attribute__((used)) static unsigned int sh_clk_read(struct clk *clk)
{
 if (clk->flags & CLK_ENABLE_REG_8BIT)
  return ioread8(clk->mapped_reg);
 else if (clk->flags & CLK_ENABLE_REG_16BIT)
  return ioread16(clk->mapped_reg);

 return ioread32(clk->mapped_reg);
}
