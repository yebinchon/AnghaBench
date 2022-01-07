
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ctrlrequest {int bRequest; } ;
struct usb_configuration {int dummy; } ;
struct TYPE_3__ {int (* setup ) (TYPE_1__*,struct usb_ctrlrequest const*) ;} ;


 int EOPNOTSUPP ;
 TYPE_1__* func_ss ;
 int stub1 (TYPE_1__*,struct usb_ctrlrequest const*) ;

__attribute__((used)) static int ss_config_setup(struct usb_configuration *c,
  const struct usb_ctrlrequest *ctrl)
{
 switch (ctrl->bRequest) {
 case 0x5b:
 case 0x5c:
  return func_ss->setup(func_ss, ctrl);
 default:
  return -EOPNOTSUPP;
 }
}
