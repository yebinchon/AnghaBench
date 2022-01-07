
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_write_bits (struct rbsp*,int,unsigned int) ;

__attribute__((used)) static int __rbsp_write_bits(struct rbsp *rbsp, int n, unsigned int *value)
{
 return rbsp_write_bits(rbsp, n, *value);
}
