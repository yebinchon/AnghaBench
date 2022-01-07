
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {int dummy; } ;


 unsigned int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;
 unsigned long ULONG_MAX ;
 int geni_se_clk_tbl_get (struct geni_se*,unsigned long**) ;

int geni_se_clk_freq_match(struct geni_se *se, unsigned long req_freq,
      unsigned int *index, unsigned long *res_freq,
      bool exact)
{
 unsigned long *tbl;
 int num_clk_levels;
 int i;
 unsigned long best_delta;
 unsigned long new_delta;
 unsigned int divider;

 num_clk_levels = geni_se_clk_tbl_get(se, &tbl);
 if (num_clk_levels < 0)
  return num_clk_levels;

 if (num_clk_levels == 0)
  return -EINVAL;

 best_delta = ULONG_MAX;
 for (i = 0; i < num_clk_levels; i++) {
  divider = DIV_ROUND_UP(tbl[i], req_freq);
  new_delta = req_freq - tbl[i] / divider;
  if (new_delta < best_delta) {

   *index = i;
   *res_freq = tbl[i];


   if (new_delta == 0)
    return 0;


   best_delta = new_delta;
  }
 }

 if (exact)
  return -EINVAL;

 return 0;
}
