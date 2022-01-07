
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct urb {int transfer_dma; int number_of_packets; int transfer_flags; TYPE_1__* iso_frame_desc; } ;
struct fotg210_iso_stream {int interval; } ;
struct fotg210_iso_sched {int span; struct fotg210_iso_packet* packet; } ;
struct fotg210_iso_packet {int bufp; int cross; int transaction; } ;
struct fotg210_hcd {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {unsigned int length; int offset; } ;


 int FOTG210_ISOC_ACTIVE ;
 int FOTG210_ITD_IOC ;
 int URB_NO_INTERRUPT ;
 int cpu_to_hc32 (struct fotg210_hcd*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void itd_sched_init(struct fotg210_hcd *fotg210,
  struct fotg210_iso_sched *iso_sched,
  struct fotg210_iso_stream *stream, struct urb *urb)
{
 unsigned i;
 dma_addr_t dma = urb->transfer_dma;


 iso_sched->span = urb->number_of_packets * stream->interval;




 for (i = 0; i < urb->number_of_packets; i++) {
  struct fotg210_iso_packet *uframe = &iso_sched->packet[i];
  unsigned length;
  dma_addr_t buf;
  u32 trans;

  length = urb->iso_frame_desc[i].length;
  buf = dma + urb->iso_frame_desc[i].offset;

  trans = FOTG210_ISOC_ACTIVE;
  trans |= buf & 0x0fff;
  if (unlikely(((i + 1) == urb->number_of_packets))
    && !(urb->transfer_flags & URB_NO_INTERRUPT))
   trans |= FOTG210_ITD_IOC;
  trans |= length << 16;
  uframe->transaction = cpu_to_hc32(fotg210, trans);


  uframe->bufp = (buf & ~(u64)0x0fff);
  buf += length;
  if (unlikely((uframe->bufp != (buf & ~(u64)0x0fff))))
   uframe->cross = 1;
 }
}
