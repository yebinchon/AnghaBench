
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsg_uep {int lock; TYPE_1__* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ep {int dummy; } ;
struct TYPE_2__ {int * mod_private; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbhs_pipe_free (struct usbhs_pipe*) ;
 struct usbhsg_uep* usbhsg_ep_to_uep (struct usb_ep*) ;
 int usbhsg_pipe_disable (struct usbhsg_uep*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_ep_disable(struct usb_ep *ep)
{
 struct usbhsg_uep *uep = usbhsg_ep_to_uep(ep);
 struct usbhs_pipe *pipe;
 unsigned long flags;

 spin_lock_irqsave(&uep->lock, flags);
 pipe = usbhsg_uep_to_pipe(uep);
 if (!pipe)
  goto out;

 usbhsg_pipe_disable(uep);
 usbhs_pipe_free(pipe);

 uep->pipe->mod_private = ((void*)0);
 uep->pipe = ((void*)0);

out:
 spin_unlock_irqrestore(&uep->lock, flags);

 return 0;
}
