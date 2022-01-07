
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_set_sel_req {int u2_pel; int u2_sel; int u1_pel; int u1_sel; } ;
struct usb_request {int buf; } ;
struct usb_ep {int dummy; } ;
struct mtu3_request {struct mtu3* mtu; } ;
struct mtu3 {int dev; } ;
typedef int sel ;


 int dev_dbg (int ,char*,int ,int ,int ,int ) ;
 int memcpy (struct usb_set_sel_req*,int ,int) ;
 struct mtu3_request* to_mtu3_request (struct usb_request*) ;

__attribute__((used)) static void ep0_set_sel_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct mtu3_request *mreq;
 struct mtu3 *mtu;
 struct usb_set_sel_req sel;

 memcpy(&sel, req->buf, sizeof(sel));

 mreq = to_mtu3_request(req);
 mtu = mreq->mtu;
 dev_dbg(mtu->dev, "u1sel:%d, u1pel:%d, u2sel:%d, u2pel:%d\n",
  sel.u1_sel, sel.u1_pel, sel.u2_sel, sel.u2_pel);
}
