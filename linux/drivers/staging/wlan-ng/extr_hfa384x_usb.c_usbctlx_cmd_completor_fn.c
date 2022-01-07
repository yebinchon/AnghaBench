
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbctlx_completor {int dummy; } ;
struct usbctlx_cmd_completor {int result; int cmdresp; } ;


 int usbctlx_get_status (int ,int ) ;

__attribute__((used)) static inline int usbctlx_cmd_completor_fn(struct usbctlx_completor *head)
{
 struct usbctlx_cmd_completor *complete;

 complete = (struct usbctlx_cmd_completor *)head;
 return usbctlx_get_status(complete->cmdresp, complete->result);
}
