
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_res_to_temp {int resist; int temp; } ;
struct ab8500_btemp {int dummy; } ;



__attribute__((used)) static int ab8500_btemp_res_to_temp(struct ab8500_btemp *di,
 const struct abx500_res_to_temp *tbl, int tbl_size, int res)
{
 int i;






 if (res > tbl[0].resist)
  i = 0;
 else if (res <= tbl[tbl_size - 1].resist)
  i = tbl_size - 2;
 else {
  i = 0;
  while (!(res <= tbl[i].resist &&
   res > tbl[i + 1].resist))
   i++;
 }

 return tbl[i].temp + ((tbl[i + 1].temp - tbl[i].temp) *
  (res - tbl[i].resist)) / (tbl[i + 1].resist - tbl[i].resist);
}
