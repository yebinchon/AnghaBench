
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {struct u132_endp* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct u132_endp {int dummy; } ;
struct u132 {int going; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,struct u132*,struct usb_hcd*,struct usb_host_endpoint*,int) ;
 struct u132* hcd_to_u132 (struct usb_hcd*) ;
 int u132_endp_put_kref (struct u132*,struct u132_endp*) ;

__attribute__((used)) static void u132_endpoint_disable(struct usb_hcd *hcd,
 struct usb_host_endpoint *hep)
{
 struct u132 *u132 = hcd_to_u132(hcd);
 if (u132->going > 2) {
  dev_err(&u132->platform_dev->dev, "u132 device %p(hcd=%p hep=%p"
   ") has been removed %d\n", u132, hcd, hep,
   u132->going);
 } else {
  struct u132_endp *endp = hep->hcpriv;
  if (endp)
   u132_endp_put_kref(u132, endp);
 }
}
