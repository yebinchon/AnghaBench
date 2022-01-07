
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extif_timings {int clk_div; int converted; int* tim; } ;


 int calc_rd_timings (struct extif_timings*) ;
 int calc_wr_timings (struct extif_timings*) ;

__attribute__((used)) static int sossi_convert_timings(struct extif_timings *t)
{
 int r = 0;
 int div = t->clk_div;

 t->converted = 0;

 if (div <= 0 || div > 8)
  return -1;


 if ((r = calc_rd_timings(t)) < 0)
  return r;

 if ((r = calc_wr_timings(t)) < 0)
  return r;

 t->tim[4] = div;

 t->converted = 1;

 return 0;
}
