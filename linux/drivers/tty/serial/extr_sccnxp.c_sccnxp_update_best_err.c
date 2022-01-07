
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static int sccnxp_update_best_err(int a, int b, int *besterr)
{
 int err = abs(a - b);

 if (*besterr > err) {
  *besterr = err;
  return 0;
 }

 return 1;
}
