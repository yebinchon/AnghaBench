
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sport {int ref_clk; int clk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static inline int pic32_enable_clock(struct pic32_sport *sport)
{
 int ret = clk_prepare_enable(sport->clk);

 if (ret)
  return ret;

 sport->ref_clk++;
 return 0;
}
