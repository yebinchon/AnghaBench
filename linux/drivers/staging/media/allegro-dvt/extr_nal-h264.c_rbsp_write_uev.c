
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int EINVAL ;
 int ilog2 (unsigned int) ;
 int rbsp_write_bits (struct rbsp*,int,unsigned int) ;

__attribute__((used)) static int rbsp_write_uev(struct rbsp *rbsp, unsigned int *value)
{
 int ret;
 int leading_zero_bits;

 if (!value)
  return -EINVAL;

 leading_zero_bits = ilog2(*value + 1);

 ret = rbsp_write_bits(rbsp, leading_zero_bits, 0);
 if (ret)
  return ret;

 return rbsp_write_bits(rbsp, leading_zero_bits + 1, *value + 1);
}
