
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbctlx_completor {int complete; } ;
struct usbctlx_rrid_completor {unsigned int riddatalen; struct usbctlx_completor head; void* riddata; struct hfa384x_usb_rridresp const* rridresp; } ;
struct hfa384x_usb_rridresp {int dummy; } ;


 int usbctlx_rrid_completor_fn ;

__attribute__((used)) static inline struct usbctlx_completor *
init_rrid_completor(struct usbctlx_rrid_completor *completor,
      const struct hfa384x_usb_rridresp *rridresp,
      void *riddata,
      unsigned int riddatalen)
{
 completor->head.complete = usbctlx_rrid_completor_fn;
 completor->rridresp = rridresp;
 completor->riddata = riddata;
 completor->riddatalen = riddatalen;
 return &completor->head;
}
