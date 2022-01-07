
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eeprom_priv {int bautoload_fail_flag; int * efuse_eeprom_data; } ;
struct adapter {int dummy; } ;


 int DBG_871X (char*) ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int HWSET_MAX_SIZE_8723B ;
 int Hal_DetectWoWMode (struct adapter*) ;
 int Hal_EfuseParseAntennaDiversity_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseBTCoexistInfo_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseBoardType_8723BS (struct adapter*,int *,int ) ;
 int Hal_EfuseParseChnlPlan_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseCustomerID_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseEEPROMVer_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseIDCode (struct adapter*,int *) ;
 int Hal_EfuseParseMACAddr_8723BS (struct adapter*,int *,int ) ;
 int Hal_EfuseParsePackageType_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseThermalMeter_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseTxPowerInfo_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseVoltage_8723B (struct adapter*,int *,int ) ;
 int Hal_EfuseParseXtal_8723B (struct adapter*,int *,int ) ;
 int Hal_InitPGData (struct adapter*,int *) ;
 int Hal_ReadRFGainOffset (struct adapter*,int *,int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_hci_hal_init_c_ ;

__attribute__((used)) static void _ReadEfuseInfo8723BS(struct adapter *padapter)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 u8 *hwinfo = ((void*)0);

 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("====>_ReadEfuseInfo8723BS()\n"));





 if (sizeof(pEEPROM->efuse_eeprom_data) < HWSET_MAX_SIZE_8723B)
  DBG_871X("[WARNING] size of efuse_eeprom_data is less than HWSET_MAX_SIZE_8723B!\n");

 hwinfo = pEEPROM->efuse_eeprom_data;

 Hal_InitPGData(padapter, hwinfo);

 Hal_EfuseParseIDCode(padapter, hwinfo);
 Hal_EfuseParseEEPROMVer_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

 Hal_EfuseParseMACAddr_8723BS(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

 Hal_EfuseParseTxPowerInfo_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseBoardType_8723BS(padapter, hwinfo, pEEPROM->bautoload_fail_flag);




 Hal_EfuseParsePackageType_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseBTCoexistInfo_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseChnlPlan_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseXtal_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseThermalMeter_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseAntennaDiversity_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 Hal_EfuseParseCustomerID_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

 Hal_EfuseParseVoltage_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);





 Hal_ReadRFGainOffset(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<==== _ReadEfuseInfo8723BS()\n"));
}
