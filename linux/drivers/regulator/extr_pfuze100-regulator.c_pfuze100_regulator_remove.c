
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int * pm_power_off_prepare ;
 int * syspm_pfuze_chip ;

__attribute__((used)) static int pfuze100_regulator_remove(struct i2c_client *client)
{
 if (syspm_pfuze_chip) {
  syspm_pfuze_chip = ((void*)0);
  pm_power_off_prepare = ((void*)0);
 }

 return 0;
}
