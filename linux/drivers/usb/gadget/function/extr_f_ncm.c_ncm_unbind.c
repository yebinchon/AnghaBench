
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {scalar_t__ os_desc_n; int os_desc_table; } ;
struct usb_configuration {int cdev; } ;
struct f_ncm {TYPE_1__* notify_req; int notify; int task_timer; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {int buf; } ;


 int DBG (int ,char*) ;
 struct f_ncm* func_to_ncm (struct usb_function*) ;
 int hrtimer_cancel (int *) ;
 int kfree (int ) ;
 TYPE_2__* ncm_string_defs ;
 int usb_ep_free_request (int ,TYPE_1__*) ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void ncm_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct f_ncm *ncm = func_to_ncm(f);

 DBG(c->cdev, "ncm unbind\n");

 hrtimer_cancel(&ncm->task_timer);

 kfree(f->os_desc_table);
 f->os_desc_n = 0;

 ncm_string_defs[0].id = 0;
 usb_free_all_descriptors(f);

 kfree(ncm->notify_req->buf);
 usb_ep_free_request(ncm->notify, ncm->notify_req);
}
