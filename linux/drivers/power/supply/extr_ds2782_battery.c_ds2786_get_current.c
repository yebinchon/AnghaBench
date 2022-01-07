
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds278x_info {int rsns; } ;
typedef int s16 ;


 int DS2786_CURRENT_UNITS ;
 int DS278x_REG_CURRENT_MSB ;
 int ds278x_read_reg16 (struct ds278x_info*,int ,int*) ;

__attribute__((used)) static int ds2786_get_current(struct ds278x_info *info, int *current_uA)
{
 int err;
 s16 raw;

 err = ds278x_read_reg16(info, DS278x_REG_CURRENT_MSB, &raw);
 if (err)
  return err;
 *current_uA = (raw / 16) * (DS2786_CURRENT_UNITS / info->rsns);
 return 0;
}
