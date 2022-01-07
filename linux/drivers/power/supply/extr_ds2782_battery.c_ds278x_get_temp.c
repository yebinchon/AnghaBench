
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds278x_info {int dummy; } ;
typedef int s16 ;


 int DS278x_REG_TEMP_MSB ;
 int ds278x_read_reg16 (struct ds278x_info*,int ,int*) ;

__attribute__((used)) static int ds278x_get_temp(struct ds278x_info *info, int *temp)
{
 s16 raw;
 int err;







 err = ds278x_read_reg16(info, DS278x_REG_TEMP_MSB, &raw);
 if (err)
  return err;
 *temp = ((raw / 32) * 125) / 100;
 return 0;
}
