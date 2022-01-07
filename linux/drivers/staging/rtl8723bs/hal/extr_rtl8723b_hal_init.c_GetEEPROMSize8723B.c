
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int BOOT_FROM_EEPROM ;
 int MSG_8192C (char*,char*) ;
 int REG_9346CR ;
 int rtw_read16 (struct adapter*,int ) ;

u8 GetEEPROMSize8723B(struct adapter *padapter)
{
 u8 size = 0;
 u32 cr;

 cr = rtw_read16(padapter, REG_9346CR);

 size = (cr & BOOT_FROM_EEPROM) ? 6 : 4;

 MSG_8192C("EEPROM type is %s\n", size == 4 ? "E-FUSE" : "93C46");

 return size;
}
