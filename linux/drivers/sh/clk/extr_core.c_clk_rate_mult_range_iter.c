
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_round_data {int arg; } ;


 unsigned int clk_get_rate (int ) ;

__attribute__((used)) static long clk_rate_mult_range_iter(unsigned int pos,
          struct clk_rate_round_data *rounder)
{
 return clk_get_rate(rounder->arg) * pos;
}
