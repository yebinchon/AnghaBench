
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_btemp {int bat_temp; } ;



int ab8500_btemp_get_batctrl_temp(struct ab8500_btemp *btemp)
{
 return btemp->bat_temp * 1000;
}
