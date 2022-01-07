
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbctlx_completor {int complete; } ;
struct usbctlx_rmem_completor {unsigned int len; struct usbctlx_completor head; void* data; struct hfa384x_usb_rmemresp* rmemresp; } ;
struct hfa384x_usb_rmemresp {int dummy; } ;


 int usbctlx_rmem_completor_fn ;

__attribute__((used)) static inline struct usbctlx_completor *
init_rmem_completor(struct usbctlx_rmem_completor *completor,
      struct hfa384x_usb_rmemresp *rmemresp,
      void *data,
      unsigned int len)
{
 completor->head.complete = usbctlx_rmem_completor_fn;
 completor->rmemresp = rmemresp;
 completor->data = data;
 completor->len = len;
 return &completor->head;
}
