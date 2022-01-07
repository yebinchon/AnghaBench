
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int clk_disable_unprepare (struct clk*) ;

__attribute__((used)) static void q6v5_clk_disable(struct device *dev,
        struct clk **clks, int count)
{
 int i;

 for (i = 0; i < count; i++)
  clk_disable_unprepare(clks[i]);
}
