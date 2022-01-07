
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct mtu3 {int ep0; } ;


 int mtu3_req_complete (int ,struct usb_request*,int ) ;

__attribute__((used)) static void ep0_req_giveback(struct mtu3 *mtu, struct usb_request *req)
{
 mtu3_req_complete(mtu->ep0, req, 0);
}
