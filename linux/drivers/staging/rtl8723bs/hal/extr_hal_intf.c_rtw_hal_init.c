
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct dvobj_priv {TYPE_3__* padapters; } ;
struct TYPE_4__ {int notch_filter; } ;
struct TYPE_5__ {scalar_t__ (* hal_init ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ registrypriv; TYPE_2__ HalFunc; } ;
struct TYPE_6__ {int hw_init_completed; } ;


 int DBG_871X (char*) ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _module_hal_init_c_ ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int init_hw_mlme_ext (struct adapter*) ;
 int rtw_bb_rf_gain_offset (struct adapter*) ;
 int rtw_hal_init_opmode (struct adapter*) ;
 int rtw_hal_notch_filter (struct adapter*,int) ;
 int rtw_hal_reset_security_engine (struct adapter*) ;
 int rtw_sec_restore_wep_key (TYPE_3__*) ;
 scalar_t__ stub1 (struct adapter*) ;

uint rtw_hal_init(struct adapter *padapter)
{
 uint status;
 struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);

 status = padapter->HalFunc.hal_init(padapter);

 if (status == _SUCCESS) {
  rtw_hal_init_opmode(padapter);

  dvobj->padapters->hw_init_completed = 1;

  if (padapter->registrypriv.notch_filter == 1)
   rtw_hal_notch_filter(padapter, 1);

  rtw_hal_reset_security_engine(padapter);

  rtw_sec_restore_wep_key(dvobj->padapters);

  init_hw_mlme_ext(padapter);

  rtw_bb_rf_gain_offset(padapter);
 } else {
  dvobj->padapters->hw_init_completed = 0;
  DBG_871X("rtw_hal_init: hal__init fail\n");
 }

 RT_TRACE(_module_hal_init_c_, _drv_err_, ("-rtl871x_hal_init:status = 0x%x\n", status));

 return status;

}
