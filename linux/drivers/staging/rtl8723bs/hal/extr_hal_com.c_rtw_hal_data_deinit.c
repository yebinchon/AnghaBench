
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {scalar_t__ hal_data_sz; int * HalData; } ;


 scalar_t__ is_primary_adapter (struct adapter*) ;
 int phy_free_filebuf (struct adapter*) ;
 int vfree (int *) ;

void rtw_hal_data_deinit(struct adapter *padapter)
{
 if (is_primary_adapter(padapter)) {
  if (padapter->HalData) {
   phy_free_filebuf(padapter);
   vfree(padapter->HalData);
   padapter->HalData = ((void*)0);
   padapter->hal_data_sz = 0;
  }
 }
}
