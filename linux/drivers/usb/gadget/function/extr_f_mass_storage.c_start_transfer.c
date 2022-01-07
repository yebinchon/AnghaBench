
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ length; int status; int buf; } ;
struct usb_ep {int name; } ;
struct fsg_dev {struct usb_ep* bulk_in; } ;


 int EOPNOTSUPP ;
 int ESHUTDOWN ;
 int GFP_KERNEL ;
 int WARNING (struct fsg_dev*,char*,int ,int) ;
 int dump_msg (struct fsg_dev*,char*,int ,scalar_t__) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int start_transfer(struct fsg_dev *fsg, struct usb_ep *ep,
      struct usb_request *req)
{
 int rc;

 if (ep == fsg->bulk_in)
  dump_msg(fsg, "bulk-in", req->buf, req->length);

 rc = usb_ep_queue(ep, req, GFP_KERNEL);
 if (rc) {


  req->status = rc;





  if (rc != -ESHUTDOWN &&
    !(rc == -EOPNOTSUPP && req->length == 0))
   WARNING(fsg, "error in submission: %s --> %d\n",
     ep->name, rc);
 }
 return rc;
}
