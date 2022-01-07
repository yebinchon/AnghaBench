
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int EINVAL ;
 int rbsp_read_bit (struct rbsp*) ;

__attribute__((used)) static inline int rbsp_read_bits(struct rbsp *rbsp, int n, unsigned int *value)
{
 int i;
 int bit;
 unsigned int tmp = 0;

 if (n > 8 * sizeof(*value))
  return -EINVAL;

 for (i = n; i > 0; i--) {
  bit = rbsp_read_bit(rbsp);
  if (bit < 0)
   return bit;
  tmp |= bit << (i - 1);
 }

 if (value)
  *value = tmp;

 return 0;
}
