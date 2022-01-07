
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int max310x_update_best_err(unsigned long f, long *besterr)
{

 long err = f % (460800 * 16);

 if ((*besterr < 0) || (*besterr > err)) {
  *besterr = err;
  return 0;
 }

 return 1;
}
