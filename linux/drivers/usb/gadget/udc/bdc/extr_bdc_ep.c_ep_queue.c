
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; scalar_t__ actual; } ;
struct bdc_req {TYPE_2__ usb_req; int epnum; } ;
struct TYPE_3__ {int desc; } ;
struct bdc_ep {int dir; int ep_num; struct bdc* bdc; TYPE_1__ usb_ep; } ;
struct bdc {int dev; int gadget; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int bdc_queue_xfr (struct bdc*,struct bdc_req*) ;
 int dev_err (int ,char*) ;
 int usb_gadget_map_request (int *,TYPE_2__*,int ) ;

__attribute__((used)) static int ep_queue(struct bdc_ep *ep, struct bdc_req *req)
{
 struct bdc *bdc;
 int ret = 0;

 if (!req || !ep->usb_ep.desc)
  return -EINVAL;

 bdc = ep->bdc;

 req->usb_req.actual = 0;
 req->usb_req.status = -EINPROGRESS;
 req->epnum = ep->ep_num;

 ret = usb_gadget_map_request(&bdc->gadget, &req->usb_req, ep->dir);
 if (ret) {
  dev_err(bdc->dev, "dma mapping failed\n");
  return ret;
 }

 return bdc_queue_xfr(bdc, req);
}
