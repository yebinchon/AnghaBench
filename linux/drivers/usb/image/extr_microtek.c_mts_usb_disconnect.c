
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct mts_desc* scsi_status; } ;
struct mts_desc {TYPE_1__ context; int urb; int host; } ;


 int kfree (struct mts_desc*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int usb_free_urb (int ) ;
 struct mts_desc* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mts_usb_disconnect (struct usb_interface *intf)
{
 struct mts_desc *desc = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 usb_kill_urb(desc->urb);
 scsi_remove_host(desc->host);

 scsi_host_put(desc->host);
 usb_free_urb(desc->urb);
 kfree(desc->context.scsi_status);
 kfree(desc);
}
