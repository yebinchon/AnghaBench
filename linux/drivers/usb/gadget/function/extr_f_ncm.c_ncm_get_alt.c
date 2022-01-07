
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct TYPE_4__ {TYPE_1__* in_ep; } ;
struct f_ncm {unsigned int ctrl_id; TYPE_2__ port; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;


 struct f_ncm* func_to_ncm (struct usb_function*) ;

__attribute__((used)) static int ncm_get_alt(struct usb_function *f, unsigned intf)
{
 struct f_ncm *ncm = func_to_ncm(f);

 if (intf == ncm->ctrl_id)
  return 0;
 return ncm->port.in_ep->enabled ? 1 : 0;
}
