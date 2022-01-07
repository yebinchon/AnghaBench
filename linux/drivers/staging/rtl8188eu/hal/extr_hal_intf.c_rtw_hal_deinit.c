
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct adapter {int hw_init_completed; } ;


 int DBG_88E (char*) ;
 scalar_t__ _SUCCESS ;
 scalar_t__ rtl8188eu_hal_deinit (struct adapter*) ;

uint rtw_hal_deinit(struct adapter *adapt)
{
 uint status = _SUCCESS;

 status = rtl8188eu_hal_deinit(adapt);

 if (status == _SUCCESS)
  adapt->hw_init_completed = 0;
 else
  DBG_88E("\n rtw_hal_deinit: hal_init fail\n");

 return status;
}
