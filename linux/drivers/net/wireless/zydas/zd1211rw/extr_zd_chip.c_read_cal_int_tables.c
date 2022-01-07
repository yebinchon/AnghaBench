
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int dummy; } ;


 int read_ofdm_cal_values (struct zd_chip*) ;
 int read_pwr_cal_values (struct zd_chip*) ;
 int read_pwr_int_values (struct zd_chip*) ;

__attribute__((used)) static int read_cal_int_tables(struct zd_chip *chip)
{
 int r;

 r = read_pwr_cal_values(chip);
 if (r)
  return r;
 r = read_pwr_int_values(chip);
 if (r)
  return r;
 r = read_ofdm_cal_values(chip);
 if (r)
  return r;
 return 0;
}
