
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct TYPE_6__ {struct fotg210_qh* qh; } ;
struct fotg210_qh {struct fotg210_qh* unlink_next; TYPE_3__ qh_next; } ;
struct fotg210_hcd {int lock; struct fotg210_qh* async_unlink; TYPE_2__* async; } ;
struct debug_buffer {char* output_buf; unsigned int alloc_size; int bus; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct fotg210_qh* qh; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 struct usb_hcd* bus_to_hcd (int ) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int qh_lines (struct fotg210_hcd*,struct fotg210_qh*,char**,unsigned int*) ;
 unsigned int scnprintf (char*,unsigned int,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t fill_async_buffer(struct debug_buffer *buf)
{
 struct usb_hcd *hcd;
 struct fotg210_hcd *fotg210;
 unsigned long flags;
 unsigned temp, size;
 char *next;
 struct fotg210_qh *qh;

 hcd = bus_to_hcd(buf->bus);
 fotg210 = hcd_to_fotg210(hcd);
 next = buf->output_buf;
 size = buf->alloc_size;

 *next = 0;





 spin_lock_irqsave(&fotg210->lock, flags);
 for (qh = fotg210->async->qh_next.qh; size > 0 && qh;
   qh = qh->qh_next.qh)
  qh_lines(fotg210, qh, &next, &size);
 if (fotg210->async_unlink && size > 0) {
  temp = scnprintf(next, size, "\nunlink =\n");
  size -= temp;
  next += temp;

  for (qh = fotg210->async_unlink; size > 0 && qh;
    qh = qh->unlink_next)
   qh_lines(fotg210, qh, &next, &size);
 }
 spin_unlock_irqrestore(&fotg210->lock, flags);

 return strlen(buf->output_buf);
}
