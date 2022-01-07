
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int enabled; } ;
struct f_midi {int transmit_lock; struct usb_ep* in_ep; } ;


 int f_midi_do_transmit (struct f_midi*,struct usb_ep*) ;
 int f_midi_drop_out_substreams (struct f_midi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void f_midi_transmit(struct f_midi *midi)
{
 struct usb_ep *ep = midi->in_ep;
 int ret;
 unsigned long flags;


 if (!ep || !ep->enabled)
  goto drop_out;

 spin_lock_irqsave(&midi->transmit_lock, flags);

 do {
  ret = f_midi_do_transmit(midi, ep);
  if (ret < 0) {
   spin_unlock_irqrestore(&midi->transmit_lock, flags);
   goto drop_out;
  }
 } while (ret);

 spin_unlock_irqrestore(&midi->transmit_lock, flags);

 return;

drop_out:
 f_midi_drop_out_substreams(midi);
}
