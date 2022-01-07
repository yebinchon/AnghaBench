
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BAT_S0_DISCHRG_CRITICAL ;
 int BAT_S0_LOW ;
 int BAT_S1_EMPTY ;
 int BAT_S1_FULL ;
 int BAT_S2_LOW_LOW ;
 int BAT_STATUS0 ;
 int BAT_STATUS1 ;
 int BAT_STATUS2 ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;
 int ec_read_u8 (int ) ;

__attribute__((used)) static int bat_capacity_level(void)
{
 u8 status0 = ec_read_u8(BAT_STATUS0);
 u8 status1 = ec_read_u8(BAT_STATUS1);
 u8 status2 = ec_read_u8(BAT_STATUS2);

 if (status0 & BAT_S0_DISCHRG_CRITICAL
   || status1 & BAT_S1_EMPTY
   || status2 & BAT_S2_LOW_LOW)
  return POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
 if (status0 & BAT_S0_LOW)
  return POWER_SUPPLY_CAPACITY_LEVEL_LOW;
 if (status1 & BAT_S1_FULL)
  return POWER_SUPPLY_CAPACITY_LEVEL_FULL;
 return POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
}
