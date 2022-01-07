
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wa_xfer {TYPE_1__* ep; scalar_t__ wusb_dev; } ;
struct TYPE_2__ {int hcpriv; } ;


 int rpipe_put (int ) ;
 int wa_xfer_giveback (struct wa_xfer*) ;
 int wusb_dev_put (scalar_t__) ;

__attribute__((used)) static void wa_xfer_completion(struct wa_xfer *xfer)
{
 if (xfer->wusb_dev)
  wusb_dev_put(xfer->wusb_dev);
 rpipe_put(xfer->ep->hcpriv);
 wa_xfer_giveback(xfer);
}
