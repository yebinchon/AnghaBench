
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_write_bit (struct rbsp*,int) ;

__attribute__((used)) static int __rbsp_write_bit(struct rbsp *rbsp, int *value)
{
 return rbsp_write_bit(rbsp, *value);
}
