
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds278x_info {int dummy; } ;


 int DS2786_REG_RARC ;
 int ds278x_read_reg (struct ds278x_info*,int ,int*) ;

__attribute__((used)) static int ds2786_get_capacity(struct ds278x_info *info, int *capacity)
{
 int err;
 u8 raw;

 err = ds278x_read_reg(info, DS2786_REG_RARC, &raw);
 if (err)
  return err;

 *capacity = raw/2 ;
 return 0;
}
