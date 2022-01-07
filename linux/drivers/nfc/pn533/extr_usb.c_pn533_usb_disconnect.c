
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct pn533_usb_phy {int ack_buffer; TYPE_1__* ack_urb; TYPE_1__* out_urb; TYPE_1__* in_urb; int priv; } ;
struct TYPE_3__ {int transfer_buffer; } ;


 int kfree (int ) ;
 int nfc_info (int *,char*) ;
 int pn533_unregister_device (int ) ;
 int usb_free_urb (TYPE_1__*) ;
 struct pn533_usb_phy* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (TYPE_1__*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void pn533_usb_disconnect(struct usb_interface *interface)
{
 struct pn533_usb_phy *phy = usb_get_intfdata(interface);

 if (!phy)
  return;

 pn533_unregister_device(phy->priv);

 usb_set_intfdata(interface, ((void*)0));

 usb_kill_urb(phy->in_urb);
 usb_kill_urb(phy->out_urb);
 usb_kill_urb(phy->ack_urb);

 kfree(phy->in_urb->transfer_buffer);
 usb_free_urb(phy->in_urb);
 usb_free_urb(phy->out_urb);
 usb_free_urb(phy->ack_urb);
 kfree(phy->ack_buffer);

 nfc_info(&interface->dev, "NXP PN533 NFC device disconnected\n");
}
