
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int dummy; } ;
struct adapter {int hal_data_sz; int HalData; } ;


 int DBG_8192C (char*) ;
 int _FAIL ;
 int _SUCCESS ;
 scalar_t__ is_primary_adapter (struct adapter*) ;
 int vzalloc (int) ;

u8 rtw_hal_data_init(struct adapter *padapter)
{
 if (is_primary_adapter(padapter)) {
  padapter->hal_data_sz = sizeof(struct hal_com_data);
  padapter->HalData = vzalloc(padapter->hal_data_sz);
  if (!padapter->HalData) {
   DBG_8192C("cannot alloc memory for HAL DATA\n");
   return _FAIL;
  }
 }
 return _SUCCESS;
}
