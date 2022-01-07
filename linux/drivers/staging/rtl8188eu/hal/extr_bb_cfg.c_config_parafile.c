
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeprom_priv {int bautoload_fail_flag; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {scalar_t__ pwrGroupCnt; } ;


 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int config_bb_with_pgheader (struct adapter*) ;
 int set_baseband_agc_config (struct adapter*) ;
 int set_baseband_phy_config (struct adapter*) ;

__attribute__((used)) static bool config_parafile(struct adapter *adapt)
{
 struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(adapt);

 set_baseband_phy_config(adapt);


 if (!eeprom->bautoload_fail_flag) {
  adapt->HalData->pwrGroupCnt = 0;
  config_bb_with_pgheader(adapt);
 }
 set_baseband_agc_config(adapt);
 return 1;
}
