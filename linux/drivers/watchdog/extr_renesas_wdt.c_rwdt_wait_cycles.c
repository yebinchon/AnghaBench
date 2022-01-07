
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwdt_priv {int clk_rate; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int usleep_range (unsigned int,int) ;

__attribute__((used)) static void rwdt_wait_cycles(struct rwdt_priv *priv, unsigned int cycles)
{
 unsigned int delay;

 delay = DIV_ROUND_UP(cycles * 1000000, priv->clk_rate);

 usleep_range(delay, 2 * delay);
}
