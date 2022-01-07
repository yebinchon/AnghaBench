
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct usb_configuration {int cdev; } ;
struct f_ecm {TYPE_1__* notify_req; int notify; } ;
struct TYPE_2__ {int buf; } ;


 int DBG (int ,char*) ;
 struct f_ecm* func_to_ecm (struct usb_function*) ;
 int kfree (int ) ;
 int usb_ep_free_request (int ,TYPE_1__*) ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void ecm_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct f_ecm *ecm = func_to_ecm(f);

 DBG(c->cdev, "ecm unbind\n");

 usb_free_all_descriptors(f);

 kfree(ecm->notify_req->buf);
 usb_ep_free_request(ecm->notify, ecm->notify_req);
}
