
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* inirp_deinit ) (struct _adapter*) ;} ;
struct _adapter {TYPE_1__ dvobjpriv; int surprise_removed; } ;


 int r8712_usb_write_port_cancel (struct _adapter*) ;
 int stub1 (struct _adapter*) ;

void rtl871x_intf_stop(struct _adapter *padapter)
{

 if (!padapter->surprise_removed) {



 }


 if (padapter->dvobjpriv.inirp_deinit)
  padapter->dvobjpriv.inirp_deinit(padapter);

 r8712_usb_write_port_cancel(padapter);

}
