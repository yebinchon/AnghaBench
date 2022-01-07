
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_request {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;


 int __usbhsg_queue_pop (struct usbhsg_uep*,struct usbhsg_request*,int) ;
 int usbhs_lock (struct usbhs_priv*,unsigned long) ;
 int usbhs_unlock (struct usbhs_priv*,unsigned long) ;
 struct usbhs_priv* usbhsg_gpriv_to_priv (struct usbhsg_gpriv*) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;

__attribute__((used)) static void usbhsg_queue_pop(struct usbhsg_uep *uep,
        struct usbhsg_request *ureq,
        int status)
{
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 struct usbhs_priv *priv = usbhsg_gpriv_to_priv(gpriv);
 unsigned long flags;

 usbhs_lock(priv, flags);
 __usbhsg_queue_pop(uep, ureq, status);
 usbhs_unlock(priv, flags);
}
