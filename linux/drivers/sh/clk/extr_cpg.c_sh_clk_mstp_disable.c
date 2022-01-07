
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_bit; } ;


 int sh_clk_read (struct clk*) ;
 int sh_clk_write (int,struct clk*) ;

__attribute__((used)) static void sh_clk_mstp_disable(struct clk *clk)
{
 sh_clk_write(sh_clk_read(clk) | (1 << clk->enable_bit), clk);
}
