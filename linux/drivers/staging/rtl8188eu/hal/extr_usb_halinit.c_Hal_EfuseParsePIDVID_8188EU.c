
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hal_data_8188e {void* EEPROMSubCustomerID; void* EEPROMCustomerID; void* EEPROMPID; void* EEPROMVID; } ;
struct adapter {struct hal_data_8188e* HalData; } ;
typedef int __le16 ;


 int DBG_88E (char*,void*,void*) ;
 size_t EEPROM_CUSTOMERID_88E ;
 void* EEPROM_Default_CustomerID ;
 void* EEPROM_Default_PID ;
 void* EEPROM_Default_SubCustomerID ;
 void* EEPROM_Default_VID ;
 size_t EEPROM_PID_88EU ;
 size_t EEPROM_VID_88EU ;
 void* EF2BYTE (int ) ;

__attribute__((used)) static void Hal_EfuseParsePIDVID_8188EU(struct adapter *adapt, u8 *hwinfo, bool AutoLoadFail)
{
 struct hal_data_8188e *haldata = adapt->HalData;

 if (!AutoLoadFail) {

  haldata->EEPROMVID = EF2BYTE(*(__le16 *)&hwinfo[EEPROM_VID_88EU]);
  haldata->EEPROMPID = EF2BYTE(*(__le16 *)&hwinfo[EEPROM_PID_88EU]);


  haldata->EEPROMCustomerID = *(u8 *)&hwinfo[EEPROM_CUSTOMERID_88E];
  haldata->EEPROMSubCustomerID = EEPROM_Default_SubCustomerID;
 } else {
  haldata->EEPROMVID = EEPROM_Default_VID;
  haldata->EEPROMPID = EEPROM_Default_PID;


  haldata->EEPROMCustomerID = EEPROM_Default_CustomerID;
  haldata->EEPROMSubCustomerID = EEPROM_Default_SubCustomerID;
 }

 DBG_88E("VID = 0x%04X, PID = 0x%04X\n", haldata->EEPROMVID, haldata->EEPROMPID);
 DBG_88E("Customer ID: 0x%02X, SubCustomer ID: 0x%02X\n", haldata->EEPROMCustomerID, haldata->EEPROMSubCustomerID);
}
