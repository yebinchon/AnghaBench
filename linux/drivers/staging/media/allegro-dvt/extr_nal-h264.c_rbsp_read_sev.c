
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_read_uev (struct rbsp*,unsigned int*) ;

__attribute__((used)) static int rbsp_read_sev(struct rbsp *rbsp, int *value)
{
 int ret;
 unsigned int tmp;

 ret = rbsp_read_uev(rbsp, &tmp);
 if (ret)
  return ret;

 if (value) {
  if (tmp & 1)
   *value = (tmp + 1) / 2;
  else
   *value = -(tmp / 2);
 }

 return 0;
}
