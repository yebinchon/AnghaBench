
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 int ESHUTDOWN ;
 int usbhs_pipe_disable (struct usbhs_pipe*) ;
 struct usbhs_pkt* usbhs_pkt_pop (struct usbhs_pipe*,int *) ;
 int usbhsg_pkt_to_ureq (struct usbhs_pkt*) ;
 int usbhsg_queue_pop (struct usbhsg_uep*,int ,int ) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_pipe_disable(struct usbhsg_uep *uep)
{
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(uep);
 struct usbhs_pkt *pkt;

 while (1) {
  pkt = usbhs_pkt_pop(pipe, ((void*)0));
  if (!pkt)
   break;

  usbhsg_queue_pop(uep, usbhsg_pkt_to_ureq(pkt), -ESHUTDOWN);
 }

 usbhs_pipe_disable(pipe);

 return 0;
}
