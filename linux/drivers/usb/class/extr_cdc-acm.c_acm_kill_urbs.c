
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acm {int rx_buflimit; int * read_urbs; TYPE_1__* wb; int ctrlurb; } ;
struct TYPE_2__ {int urb; } ;


 int ACM_NW ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void acm_kill_urbs(struct acm *acm)
{
 int i;

 usb_kill_urb(acm->ctrlurb);
 for (i = 0; i < ACM_NW; i++)
  usb_kill_urb(acm->wb[i].urb);
 for (i = 0; i < acm->rx_buflimit; i++)
  usb_kill_urb(acm->read_urbs[i]);
}
