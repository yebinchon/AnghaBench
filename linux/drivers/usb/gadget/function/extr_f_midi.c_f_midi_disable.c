
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_midi {int in_ep; int in_req_fifo; int out_ep; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int f_midi_drop_out_substreams (struct f_midi*) ;
 int free_ep_req (int ,struct usb_request*) ;
 struct f_midi* func_to_midi (struct usb_function*) ;
 scalar_t__ kfifo_get (int *,struct usb_request**) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static void f_midi_disable(struct usb_function *f)
{
 struct f_midi *midi = func_to_midi(f);
 struct usb_composite_dev *cdev = f->config->cdev;
 struct usb_request *req = ((void*)0);

 DBG(cdev, "disable\n");





 usb_ep_disable(midi->in_ep);
 usb_ep_disable(midi->out_ep);


 while (kfifo_get(&midi->in_req_fifo, &req))
  free_ep_req(midi->in_ep, req);

 f_midi_drop_out_substreams(midi);
}
