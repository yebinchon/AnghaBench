
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {TYPE_5__* ep; TYPE_4__* dev; } ;
struct TYPE_7__ {TYPE_1__* m_bus; } ;
struct mon_reader_text {scalar_t__ nevents; int wait; int e_list; TYPE_2__ r; int e_slab; } ;
struct mon_event_text {char type; unsigned long id; int status; char setup_flag; char data_flag; int e_link; scalar_t__ length; int tstamp; int is_in; int xfertype; int epnum; int devnum; int busnum; } ;
struct TYPE_10__ {int desc; } ;
struct TYPE_9__ {int devnum; TYPE_3__* bus; } ;
struct TYPE_8__ {int busnum; } ;
struct TYPE_6__ {int cnt_text_lost; } ;


 scalar_t__ EVENT_MAX ;
 int GFP_ATOMIC ;
 struct mon_event_text* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mon_get_timestamp () ;
 int usb_endpoint_num (int *) ;
 int usb_endpoint_type (int *) ;
 int usb_urb_dir_in (struct urb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mon_text_error(void *data, struct urb *urb, int error)
{
 struct mon_reader_text *rp = data;
 struct mon_event_text *ep;

 if (rp->nevents >= EVENT_MAX ||
     (ep = kmem_cache_alloc(rp->e_slab, GFP_ATOMIC)) == ((void*)0)) {
  rp->r.m_bus->cnt_text_lost++;
  return;
 }

 ep->type = 'E';
 ep->id = (unsigned long) urb;
 ep->busnum = urb->dev->bus->busnum;
 ep->devnum = urb->dev->devnum;
 ep->epnum = usb_endpoint_num(&urb->ep->desc);
 ep->xfertype = usb_endpoint_type(&urb->ep->desc);
 ep->is_in = usb_urb_dir_in(urb);
 ep->tstamp = mon_get_timestamp();
 ep->length = 0;
 ep->status = error;

 ep->setup_flag = '-';
 ep->data_flag = 'E';

 rp->nevents++;
 list_add_tail(&ep->e_link, &rp->e_list);
 wake_up(&rp->wait);
}
