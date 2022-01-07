
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3c_hsudc_ep {int stopped; } ;
struct TYPE_3__ {int speed; } ;
struct s3c_hsudc {struct s3c_hsudc_ep* ep; TYPE_2__* pd; TYPE_1__ gadget; } ;
struct TYPE_4__ {int epnum; } ;


 int ESHUTDOWN ;
 int USB_SPEED_UNKNOWN ;
 int s3c_hsudc_nuke_ep (struct s3c_hsudc_ep*,int ) ;

__attribute__((used)) static void s3c_hsudc_stop_activity(struct s3c_hsudc *hsudc)
{
 struct s3c_hsudc_ep *hsep;
 int epnum;

 hsudc->gadget.speed = USB_SPEED_UNKNOWN;

 for (epnum = 0; epnum < hsudc->pd->epnum; epnum++) {
  hsep = &hsudc->ep[epnum];
  hsep->stopped = 1;
  s3c_hsudc_nuke_ep(hsep, -ESHUTDOWN);
 }
}
