
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeprom_priv {int bautoload_fail_flag; int efuse_eeprom_data; } ;
struct adapter {int dummy; } ;


 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int Hal_EfuseParseBoardType88E (struct adapter*,int ,int ) ;
 int Hal_EfuseParseCustomerID88E (struct adapter*,int ,int ) ;
 int Hal_EfuseParseEEPROMVer88E (struct adapter*,int ,int ) ;
 int Hal_EfuseParseIDCode88E (struct adapter*,int ) ;
 int Hal_EfuseParseMACAddr_8188EU (struct adapter*,int ,int ) ;
 int Hal_EfuseParsePIDVID_8188EU (struct adapter*,int ,int ) ;
 int Hal_EfuseParseXtal_8188E (struct adapter*,int ,int ) ;
 int Hal_ReadAntennaDiversity88E (struct adapter*,int ,int ) ;
 int Hal_ReadPowerSavingMode88E (struct adapter*,int ,int ) ;
 int Hal_ReadThermalMeter_88E (struct adapter*,int ,int ) ;
 int Hal_ReadTxPowerInfo88E (struct adapter*,int ,int ) ;
 int rtl8188e_EfuseParseChnlPlan (struct adapter*,int ,int ) ;

__attribute__((used)) static void readAdapterInfo_8188EU(struct adapter *adapt)
{
 struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(adapt);


 Hal_EfuseParseIDCode88E(adapt, eeprom->efuse_eeprom_data);
 Hal_EfuseParsePIDVID_8188EU(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_EfuseParseMACAddr_8188EU(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);

 Hal_ReadPowerSavingMode88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_ReadTxPowerInfo88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_EfuseParseEEPROMVer88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 rtl8188e_EfuseParseChnlPlan(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_EfuseParseXtal_8188E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_EfuseParseCustomerID88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_ReadAntennaDiversity88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_EfuseParseBoardType88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 Hal_ReadThermalMeter_88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
}
