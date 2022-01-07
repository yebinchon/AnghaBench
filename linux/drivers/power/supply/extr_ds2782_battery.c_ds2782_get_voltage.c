
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds278x_info {int dummy; } ;
typedef int s16 ;


 int DS278x_REG_VOLT_MSB ;
 int ds278x_read_reg16 (struct ds278x_info*,int ,int*) ;

__attribute__((used)) static int ds2782_get_voltage(struct ds278x_info *info, int *voltage_uV)
{
 s16 raw;
 int err;





 err = ds278x_read_reg16(info, DS278x_REG_VOLT_MSB, &raw);
 if (err)
  return err;
 *voltage_uV = (raw / 32) * 4800;
 return 0;
}
