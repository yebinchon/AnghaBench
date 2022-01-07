
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct musb {TYPE_1__* hcd; } ;
struct TYPE_3__ {scalar_t__ status_urb; } ;


 int MUSB_HST_MODE (struct musb*) ;
 int usb_hcd_poll_rh_status (TYPE_1__*) ;
 int usb_hcd_resume_root_hub (TYPE_1__*) ;

void musb_host_poke_root_hub(struct musb *musb)
{
 MUSB_HST_MODE(musb);
 if (musb->hcd->status_urb)
  usb_hcd_poll_rh_status(musb->hcd);
 else
  usb_hcd_resume_root_hub(musb->hcd);
}
