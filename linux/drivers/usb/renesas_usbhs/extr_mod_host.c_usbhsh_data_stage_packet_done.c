
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_request {int dummy; } ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int dummy; } ;


 struct usbhsh_request* usbhsh_pkt_to_ureq (struct usbhs_pkt*) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;
 int usbhsh_ureq_free (struct usbhsh_hpriv*,struct usbhsh_request*) ;

__attribute__((used)) static void usbhsh_data_stage_packet_done(struct usbhs_priv *priv,
       struct usbhs_pkt *pkt)
{
 struct usbhsh_request *ureq = usbhsh_pkt_to_ureq(pkt);
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);



 usbhsh_ureq_free(hpriv, ureq);
}
