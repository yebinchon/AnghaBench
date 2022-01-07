
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_2__ {scalar_t__ (* hal_bus_init ) (struct _adapter*) ;} ;
struct _adapter {int hw_init_completed; TYPE_1__ halpriv; } ;


 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 scalar_t__ rtl8712_hal_init (struct _adapter*) ;
 scalar_t__ stub1 (struct _adapter*) ;

uint rtl871x_hal_init(struct _adapter *padapter)
{
 padapter->hw_init_completed = 0;
 if (!padapter->halpriv.hal_bus_init)
  return _FAIL;
 if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
  return _FAIL;
 if (rtl8712_hal_init(padapter) == _SUCCESS) {
  padapter->hw_init_completed = 1;
 } else {
  padapter->hw_init_completed = 0;
  return _FAIL;
 }
 return _SUCCESS;
}
