
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BAT_S0_CHARGING ;
 int BAT_S0_DISCHARGE ;
 int BAT_S1_FULL ;
 int BAT_STATUS0 ;
 int BAT_STATUS1 ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int ec_read_u8 (int ) ;

__attribute__((used)) static int bat_status(void)
{
 u8 status0 = ec_read_u8(BAT_STATUS0);
 u8 status1 = ec_read_u8(BAT_STATUS1);

 if (status0 & BAT_S0_CHARGING)
  return POWER_SUPPLY_STATUS_CHARGING;
 if (status0 & BAT_S0_DISCHARGE)
  return POWER_SUPPLY_STATUS_DISCHARGING;
 if (status1 & BAT_S1_FULL)
  return POWER_SUPPLY_STATUS_FULL;
 return POWER_SUPPLY_STATUS_NOT_CHARGING;
}
