
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int EepromAddressSize; } ;


 int GetEEPROMSize8723B (struct adapter*) ;
 int _ReadAdapterInfo8723BS (struct adapter*) ;

__attribute__((used)) static void ReadAdapterInfo8723BS(struct adapter *padapter)
{

 padapter->EepromAddressSize = GetEEPROMSize8723B(padapter);

 _ReadAdapterInfo8723BS(padapter);
}
