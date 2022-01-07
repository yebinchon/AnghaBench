
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_2__ {int notch_filter; } ;
struct adapter {int hw_init_completed; TYPE_1__ registrypriv; } ;


 int DBG_88E (char*) ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _module_hal_init_c_ ;
 scalar_t__ rtl8188eu_hal_init (struct adapter*) ;
 int rtw_hal_notch_filter (struct adapter*,int) ;

uint rtw_hal_init(struct adapter *adapt)
{
 uint status = _SUCCESS;

 adapt->hw_init_completed = 0;

 status = rtl8188eu_hal_init(adapt);

 if (status == _SUCCESS) {
  adapt->hw_init_completed = 1;

  if (adapt->registrypriv.notch_filter == 1)
   rtw_hal_notch_filter(adapt, 1);
 } else {
  adapt->hw_init_completed = 0;
  DBG_88E("rtw_hal_init: hal__init fail\n");
 }

 RT_TRACE(_module_hal_init_c_, _drv_err_,
   ("-rtl871x_hal_init:status=0x%x\n", status));

 return status;
}
