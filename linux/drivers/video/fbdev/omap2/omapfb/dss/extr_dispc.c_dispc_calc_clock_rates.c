
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_clock_info {int lck_div; int pck_div; unsigned long lck; int pck; } ;


 int EINVAL ;

int dispc_calc_clock_rates(unsigned long dispc_fclk_rate,
  struct dispc_clock_info *cinfo)
{
 if (cinfo->lck_div > 255 || cinfo->lck_div == 0)
  return -EINVAL;
 if (cinfo->pck_div < 1 || cinfo->pck_div > 255)
  return -EINVAL;

 cinfo->lck = dispc_fclk_rate / cinfo->lck_div;
 cinfo->pck = cinfo->lck / cinfo->pck_div;

 return 0;
}
