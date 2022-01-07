
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct usb_request {int * buf; void* complete; scalar_t__ length; } ;
struct usb_function {int dummy; } ;
struct f_midi {unsigned int ms_id; unsigned int qlen; TYPE_1__* out_ep; int buflen; int in_req_fifo; TYPE_1__* in_ep; } ;
struct TYPE_5__ {int name; } ;


 int ENOMEM ;
 int ERROR (struct f_midi*,char*,int ,int) ;
 int GFP_ATOMIC ;
 void* f_midi_complete ;
 int f_midi_start_ep (struct f_midi*,struct usb_function*,TYPE_1__*) ;
 int free_ep_req (TYPE_1__*,struct usb_request*) ;
 struct f_midi* func_to_midi (struct usb_function*) ;
 scalar_t__ kfifo_avail (int *) ;
 int kfifo_put (int *,struct usb_request*) ;
 struct usb_request* midi_alloc_ep_req (TYPE_1__*,int ) ;
 int usb_ep_queue (TYPE_1__*,struct usb_request*,int ) ;

__attribute__((used)) static int f_midi_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_midi *midi = func_to_midi(f);
 unsigned i;
 int err;


 if (intf != midi->ms_id)
  return 0;

 err = f_midi_start_ep(midi, f, midi->in_ep);
 if (err)
  return err;

 err = f_midi_start_ep(midi, f, midi->out_ep);
 if (err)
  return err;


 while (kfifo_avail(&midi->in_req_fifo)) {
  struct usb_request *req =
   midi_alloc_ep_req(midi->in_ep, midi->buflen);

  if (req == ((void*)0))
   return -ENOMEM;

  req->length = 0;
  req->complete = f_midi_complete;

  kfifo_put(&midi->in_req_fifo, req);
 }


 for (i = 0; i < midi->qlen && err == 0; i++) {
  struct usb_request *req =
   midi_alloc_ep_req(midi->out_ep, midi->buflen);

  if (req == ((void*)0))
   return -ENOMEM;

  req->complete = f_midi_complete;
  err = usb_ep_queue(midi->out_ep, req, GFP_ATOMIC);
  if (err) {
   ERROR(midi, "%s: couldn't enqueue request: %d\n",
        midi->out_ep->name, err);
   if (req->buf != ((void*)0))
    free_ep_req(midi->out_ep, req);
   return err;
  }
 }

 return 0;
}
