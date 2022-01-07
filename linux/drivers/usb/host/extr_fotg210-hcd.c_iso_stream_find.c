
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {struct fotg210_iso_stream* hcpriv; } ;
struct urb {int pipe; TYPE_1__* dev; int interval; } ;
struct fotg210_iso_stream {int * hw; struct usb_host_endpoint* ep; } ;
struct fotg210_hcd {int lock; } ;
struct TYPE_2__ {int devpath; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;


 int GFP_ATOMIC ;
 int fotg210_dbg (struct fotg210_hcd*,char*,int ,unsigned int,char*) ;
 struct fotg210_iso_stream* iso_stream_alloc (int ) ;
 int iso_stream_init (struct fotg210_hcd*,struct fotg210_iso_stream*,TYPE_1__*,int ,int ) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 unsigned int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static struct fotg210_iso_stream *iso_stream_find(struct fotg210_hcd *fotg210,
  struct urb *urb)
{
 unsigned epnum;
 struct fotg210_iso_stream *stream;
 struct usb_host_endpoint *ep;
 unsigned long flags;

 epnum = usb_pipeendpoint(urb->pipe);
 if (usb_pipein(urb->pipe))
  ep = urb->dev->ep_in[epnum];
 else
  ep = urb->dev->ep_out[epnum];

 spin_lock_irqsave(&fotg210->lock, flags);
 stream = ep->hcpriv;

 if (unlikely(stream == ((void*)0))) {
  stream = iso_stream_alloc(GFP_ATOMIC);
  if (likely(stream != ((void*)0))) {
   ep->hcpriv = stream;
   stream->ep = ep;
   iso_stream_init(fotg210, stream, urb->dev, urb->pipe,
     urb->interval);
  }


 } else if (unlikely(stream->hw != ((void*)0))) {
  fotg210_dbg(fotg210, "dev %s ep%d%s, not iso??\n",
    urb->dev->devpath, epnum,
    usb_pipein(urb->pipe) ? "in" : "out");
  stream = ((void*)0);
 }

 spin_unlock_irqrestore(&fotg210->lock, flags);
 return stream;
}
