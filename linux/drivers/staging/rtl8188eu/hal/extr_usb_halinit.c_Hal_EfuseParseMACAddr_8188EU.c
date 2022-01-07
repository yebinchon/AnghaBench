
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eeprom_priv {int* mac_addr; } ;
struct adapter {int dummy; } ;


 size_t EEPROM_MAC_ADDR_88EU ;
 int ETH_ALEN ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;
 int memcpy (int*,int*,int ) ;

__attribute__((used)) static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt, u8 *hwinfo, bool AutoLoadFail)
{
 u16 i;
 u8 sMacAddr[6] = {0x00, 0xE0, 0x4C, 0x81, 0x88, 0x02};
 struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(adapt);

 if (AutoLoadFail) {
  for (i = 0; i < 6; i++)
   eeprom->mac_addr[i] = sMacAddr[i];
 } else {

  memcpy(eeprom->mac_addr, &hwinfo[EEPROM_MAC_ADDR_88EU], ETH_ALEN);
 }
 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_,
   ("Hal_EfuseParseMACAddr_8188EU: Permanent Address = %pM\n",
   eeprom->mac_addr));
}
