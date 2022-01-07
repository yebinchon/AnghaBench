
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int pwr_int_values; } ;


 int E2P_CHANNEL_COUNT ;
 int E2P_PWR_INT_GUARD ;
 int E2P_PWR_INT_VALUE1 ;
 int read_values (struct zd_chip*,int ,int ,int ,int ) ;

__attribute__((used)) static int read_pwr_int_values(struct zd_chip *chip)
{
 return read_values(chip, chip->pwr_int_values,
          E2P_CHANNEL_COUNT, E2P_PWR_INT_VALUE1,
   E2P_PWR_INT_GUARD);
}
