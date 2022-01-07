
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; int error_count; } ;
struct c67x00_td {int privdata; int status; struct urb* urb; } ;
struct c67x00_hcd {int dummy; } ;
struct TYPE_2__ {int status; int actual_length; } ;


 int TD_ERROR_MASK ;
 int c67x00_giveback_urb (struct c67x00_hcd*,struct urb*,int ) ;
 int c67x00_td_to_error (struct c67x00_hcd*,struct c67x00_td*) ;
 int td_actual_bytes (struct c67x00_td*) ;

__attribute__((used)) static void c67x00_handle_isoc(struct c67x00_hcd *c67x00, struct c67x00_td *td)
{
 struct urb *urb = td->urb;
 int cnt;

 if (!urb)
  return;

 cnt = td->privdata;

 if (td->status & TD_ERROR_MASK)
  urb->error_count++;

 urb->iso_frame_desc[cnt].actual_length = td_actual_bytes(td);
 urb->iso_frame_desc[cnt].status = c67x00_td_to_error(c67x00, td);
 if (cnt + 1 == urb->number_of_packets)
  c67x00_giveback_urb(c67x00, urb, 0);
}
