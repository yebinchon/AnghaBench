
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int mapped_reg; } ;


 int CLK_ENABLE_REG_16BIT ;
 int CLK_ENABLE_REG_8BIT ;
 int iowrite16 (int,int ) ;
 int iowrite32 (int,int ) ;
 int iowrite8 (int,int ) ;

__attribute__((used)) static void sh_clk_write(int value, struct clk *clk)
{
 if (clk->flags & CLK_ENABLE_REG_8BIT)
  iowrite8(value, clk->mapped_reg);
 else if (clk->flags & CLK_ENABLE_REG_16BIT)
  iowrite16(value, clk->mapped_reg);
 else
  iowrite32(value, clk->mapped_reg);
}
