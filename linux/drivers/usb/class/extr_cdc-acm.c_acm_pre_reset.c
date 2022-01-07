
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct acm {scalar_t__ nb_index; int flags; } ;


 int EVENT_RX_STALL ;
 int clear_bit (int ,int *) ;
 struct acm* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int acm_pre_reset(struct usb_interface *intf)
{
 struct acm *acm = usb_get_intfdata(intf);

 clear_bit(EVENT_RX_STALL, &acm->flags);
 acm->nb_index = 0;

 return 0;
}
