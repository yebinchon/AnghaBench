
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct rbsp {int dummy; } ;


 int EINVAL ;
 int rbsp_write_bit (struct rbsp*,unsigned int) ;

__attribute__((used)) static int rbsp_write_bits(struct rbsp *rbsp, int n, unsigned int value)
{
 int ret;

 if (n > 8 * sizeof(value))
  return -EINVAL;

 while (n--) {
  ret = rbsp_write_bit(rbsp, (value >> n) & 1);
  if (ret)
   return ret;
 }

 return 0;
}
