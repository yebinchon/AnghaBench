
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int* pwr_cal_values; } ;


 int ZD_CR68 ;
 int zd_iowrite16_locked (struct zd_chip*,int,int ) ;

__attribute__((used)) static int update_pwr_cal(struct zd_chip *chip, u8 channel)
{
 u8 value = chip->pwr_cal_values[channel-1];
 return zd_iowrite16_locked(chip, value, ZD_CR68);
}
