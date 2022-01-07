
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {struct ffs_data* context; } ;
struct usb_ep {int dummy; } ;
struct ffs_data {int ep0req_completion; } ;


 int complete (int *) ;

__attribute__((used)) static void ffs_ep0_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct ffs_data *ffs = req->context;

 complete(&ffs->ep0req_completion);
}
