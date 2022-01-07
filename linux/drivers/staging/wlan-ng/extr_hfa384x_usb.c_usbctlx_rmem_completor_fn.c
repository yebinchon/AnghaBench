
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbctlx_rmem_completor {int len; TYPE_1__* rmemresp; int data; } ;
struct usbctlx_completor {int dummy; } ;
struct TYPE_2__ {int data; int frmlen; } ;


 int memcpy (int ,int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int usbctlx_rmem_completor_fn(struct usbctlx_completor *head)
{
 struct usbctlx_rmem_completor *complete =
  (struct usbctlx_rmem_completor *)head;

 pr_debug("rmemresp:len=%d\n", complete->rmemresp->frmlen);
 memcpy(complete->data, complete->rmemresp->data, complete->len);
 return 0;
}
