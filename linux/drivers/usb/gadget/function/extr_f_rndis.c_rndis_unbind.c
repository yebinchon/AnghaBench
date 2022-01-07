
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {scalar_t__ os_desc_n; int os_desc_table; } ;
struct usb_configuration {int dummy; } ;
struct f_rndis {TYPE_1__* notify_req; int notify; } ;
struct TYPE_2__ {int buf; } ;


 struct f_rndis* func_to_rndis (struct usb_function*) ;
 int kfree (int ) ;
 int usb_ep_free_request (int ,TYPE_1__*) ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void rndis_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct f_rndis *rndis = func_to_rndis(f);

 kfree(f->os_desc_table);
 f->os_desc_n = 0;
 usb_free_all_descriptors(f);

 kfree(rndis->notify_req->buf);
 usb_ep_free_request(rndis->notify, rndis->notify_req);
}
