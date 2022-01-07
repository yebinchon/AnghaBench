
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; int respond_work; } ;


 int ftdi_elan_delete ;
 int kref_put (int *,int ) ;
 int schedule_delayed_work (int *,unsigned int) ;

__attribute__((used)) static void ftdi_response_requeue_work(struct usb_ftdi *ftdi,
           unsigned int delta)
{
 if (!schedule_delayed_work(&ftdi->respond_work, delta))
  kref_put(&ftdi->kref, ftdi_elan_delete);
}
