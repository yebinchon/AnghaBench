
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int bup; int driver_stopped; int hw_init_completed; int (* dvobj_deinit ) (struct _adapter*) ;int surprise_removed; } ;


 int r8712_stop_drv_threads (struct _adapter*) ;
 int rtl8712_hal_deinit (struct _adapter*) ;
 int rtl871x_intf_stop (struct _adapter*) ;
 int stub1 (struct _adapter*) ;

void r871x_dev_unload(struct _adapter *padapter)
{
 if (padapter->bup) {

  padapter->driver_stopped = 1;


  rtl871x_intf_stop(padapter);


  r8712_stop_drv_threads(padapter);


  if (!padapter->surprise_removed) {
   padapter->hw_init_completed = 0;
   rtl8712_hal_deinit(padapter);
  }


  if (padapter->dvobj_deinit)
   padapter->dvobj_deinit(padapter);
  padapter->bup = 0;
 }
}
