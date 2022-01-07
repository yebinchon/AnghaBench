
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BAT_S1_LiION_OR_NiMH ;
 int BAT_STATUS1 ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int POWER_SUPPLY_TECHNOLOGY_NiMH ;
 int ec_read_u8 (int ) ;

__attribute__((used)) static int bat_technology(void)
{
 u8 status = ec_read_u8(BAT_STATUS1);

 if (status & BAT_S1_LiION_OR_NiMH)
  return POWER_SUPPLY_TECHNOLOGY_LION;
 return POWER_SUPPLY_TECHNOLOGY_NiMH;
}
