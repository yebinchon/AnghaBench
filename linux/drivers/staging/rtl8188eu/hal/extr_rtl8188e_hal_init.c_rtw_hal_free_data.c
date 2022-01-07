
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int * HalData; } ;


 int kfree (int *) ;

void rtw_hal_free_data(struct adapter *padapter)
{
 kfree(padapter->HalData);
 padapter->HalData = ((void*)0);
}
