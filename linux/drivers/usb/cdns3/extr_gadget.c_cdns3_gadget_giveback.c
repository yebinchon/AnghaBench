
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int status; scalar_t__ buf; scalar_t__ complete; int length; int list; } ;
struct cdns3_request {int flags; TYPE_1__* aligned_buf; struct usb_request request; } ;
struct cdns3_endpoint {int endpoint; int dir; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ dev_ver; scalar_t__ zlp_buf; int lock; int sysdev; } ;
struct TYPE_2__ {int buf; } ;


 scalar_t__ DEV_VER_V2 ;
 int EINPROGRESS ;
 int REQUEST_PENDING ;
 int REQUEST_UNALIGNED ;
 int USB_DIR_OUT ;
 int cdns3_gadget_ep_free_request (int *,struct usb_request*) ;
 struct usb_request* cdns3_wa2_gadget_giveback (struct cdns3_device*,struct cdns3_endpoint*,struct cdns3_request*) ;
 int list_del_init (int *) ;
 int memcpy (scalar_t__,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_cdns3_gadget_giveback (struct cdns3_request*) ;
 int usb_gadget_giveback_request (int *,struct usb_request*) ;
 int usb_gadget_unmap_request_by_dev (int ,struct usb_request*,int ) ;

void cdns3_gadget_giveback(struct cdns3_endpoint *priv_ep,
      struct cdns3_request *priv_req,
      int status)
{
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 struct usb_request *request = &priv_req->request;

 list_del_init(&request->list);

 if (request->status == -EINPROGRESS)
  request->status = status;

 usb_gadget_unmap_request_by_dev(priv_dev->sysdev, request,
     priv_ep->dir);

 if ((priv_req->flags & REQUEST_UNALIGNED) &&
     priv_ep->dir == USB_DIR_OUT && !request->status)
  memcpy(request->buf, priv_req->aligned_buf->buf,
         request->length);

 priv_req->flags &= ~(REQUEST_PENDING | REQUEST_UNALIGNED);
 trace_cdns3_gadget_giveback(priv_req);

 if (priv_dev->dev_ver < DEV_VER_V2) {
  request = cdns3_wa2_gadget_giveback(priv_dev, priv_ep,
          priv_req);
  if (!request)
   return;
 }

 if (request->complete) {
  spin_unlock(&priv_dev->lock);
  usb_gadget_giveback_request(&priv_ep->endpoint,
         request);
  spin_lock(&priv_dev->lock);
 }

 if (request->buf == priv_dev->zlp_buf)
  cdns3_gadget_ep_free_request(&priv_ep->endpoint, request);
}
