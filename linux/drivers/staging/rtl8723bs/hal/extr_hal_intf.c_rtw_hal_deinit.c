
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct dvobj_priv {struct adapter* padapters; } ;
struct TYPE_2__ {scalar_t__ (* hal_deinit ) (struct adapter*) ;} ;
struct adapter {int hw_init_completed; TYPE_1__ HalFunc; } ;


 int DBG_871X (char*) ;
 scalar_t__ _SUCCESS ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 scalar_t__ stub1 (struct adapter*) ;

uint rtw_hal_deinit(struct adapter *padapter)
{
 uint status = _SUCCESS;
 struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);

 status = padapter->HalFunc.hal_deinit(padapter);

 if (status == _SUCCESS) {
  padapter = dvobj->padapters;
  padapter->hw_init_completed = 0;
 } else {
  DBG_871X("\n rtw_hal_deinit: hal_init fail\n");
 }
 return status;
}
