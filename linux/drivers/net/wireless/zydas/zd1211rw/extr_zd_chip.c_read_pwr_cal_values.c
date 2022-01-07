
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int pwr_cal_values; } ;


 int E2P_CHANNEL_COUNT ;
 int E2P_PWR_CAL_VALUE1 ;
 int read_values (struct zd_chip*,int ,int ,int ,int ) ;

__attribute__((used)) static int read_pwr_cal_values(struct zd_chip *chip)
{
 return read_values(chip, chip->pwr_cal_values,
          E2P_CHANNEL_COUNT, E2P_PWR_CAL_VALUE1,
   0);
}
