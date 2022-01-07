
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * setup_packet; } ;
struct mon_event_text {scalar_t__ xfertype; int setup; } ;
struct mon_bus {int dummy; } ;


 int SETUP_MAX ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static inline char mon_text_get_setup(struct mon_event_text *ep,
    struct urb *urb, char ev_type, struct mon_bus *mbus)
{

 if (ep->xfertype != USB_ENDPOINT_XFER_CONTROL || ev_type != 'S')
  return '-';

 if (urb->setup_packet == ((void*)0))
  return 'Z';

 memcpy(ep->setup, urb->setup_packet, SETUP_MAX);
 return 0;
}
