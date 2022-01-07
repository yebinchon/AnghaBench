
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct f_acm {scalar_t__ notify_req; int notify; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 TYPE_1__* acm_string_defs ;
 struct f_acm* func_to_acm (struct usb_function*) ;
 int gs_free_req (int ,scalar_t__) ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void acm_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct f_acm *acm = func_to_acm(f);

 acm_string_defs[0].id = 0;
 usb_free_all_descriptors(f);
 if (acm->notify_req)
  gs_free_req(acm->notify, acm->notify_req);
}
