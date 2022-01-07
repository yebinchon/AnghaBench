
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {void* drv_data; } ;



void *power_supply_get_drvdata(struct power_supply *psy)
{
 return psy->drv_data;
}
