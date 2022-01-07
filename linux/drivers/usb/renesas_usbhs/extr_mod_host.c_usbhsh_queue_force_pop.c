
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 struct usbhs_pkt* usbhs_pkt_pop (struct usbhs_pipe*,int *) ;
 int usbhsh_queue_done (struct usbhs_priv*,struct usbhs_pkt*) ;

__attribute__((used)) static void usbhsh_queue_force_pop(struct usbhs_priv *priv,
       struct usbhs_pipe *pipe)
{
 struct usbhs_pkt *pkt;

 while (1) {
  pkt = usbhs_pkt_pop(pipe, ((void*)0));
  if (!pkt)
   break;






  usbhsh_queue_done(priv, pkt);
 }
}
