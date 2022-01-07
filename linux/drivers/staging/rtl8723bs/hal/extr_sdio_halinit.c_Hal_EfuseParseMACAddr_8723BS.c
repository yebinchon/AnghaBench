
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eeprom_priv {int* mac_addr; } ;
struct adapter {int dummy; } ;


 size_t EEPROM_MAC_ADDR_8723BS ;
 int ETH_ALEN ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;
 int memcpy (int*,int*,int ) ;

__attribute__((used)) static void Hal_EfuseParseMACAddr_8723BS(
 struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
 u16 i;
 u8 sMacAddr[6] = {0x00, 0xE0, 0x4C, 0xb7, 0x23, 0x00};
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);

 if (AutoLoadFail) {

  for (i = 0; i < 6; i++)
   pEEPROM->mac_addr[i] = sMacAddr[i];
 } else {

  memcpy(pEEPROM->mac_addr, &hwinfo[EEPROM_MAC_ADDR_8723BS], ETH_ALEN);
 }


 RT_TRACE(
  _module_hci_hal_init_c_,
  _drv_notice_,
  (
   "Hal_EfuseParseMACAddr_8723BS: Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\n",
   pEEPROM->mac_addr[0],
   pEEPROM->mac_addr[1],
   pEEPROM->mac_addr[2],
   pEEPROM->mac_addr[3],
   pEEPROM->mac_addr[4],
   pEEPROM->mac_addr[5]
  )
 );
}
