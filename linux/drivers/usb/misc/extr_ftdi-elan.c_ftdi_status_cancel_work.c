
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; int status_work; } ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int ftdi_elan_delete ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void ftdi_status_cancel_work(struct usb_ftdi *ftdi)
{
 if (cancel_delayed_work_sync(&ftdi->status_work))
  kref_put(&ftdi->kref, ftdi_elan_delete);
}
