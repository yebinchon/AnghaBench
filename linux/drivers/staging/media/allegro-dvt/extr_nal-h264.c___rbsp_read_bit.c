
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_read_bit (struct rbsp*) ;

__attribute__((used)) static int __rbsp_read_bit(struct rbsp *rbsp, int *value)
{
 int tmp = rbsp_read_bit(rbsp);

 if (tmp < 0)
  return tmp;
 *value = tmp;

 return 0;
}
