
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int context; scalar_t__ actual; scalar_t__ status; } ;
struct usb_ep {struct ffs_ep* driver_data; } ;
struct ffs_ep {scalar_t__ status; } ;


 int ENTER () ;
 int complete (int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void ffs_epfile_io_complete(struct usb_ep *_ep, struct usb_request *req)
{
 ENTER();
 if (likely(req->context)) {
  struct ffs_ep *ep = _ep->driver_data;
  ep->status = req->status ? req->status : req->actual;
  complete(req->context);
 }
}
