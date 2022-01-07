
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;
struct f_uas {int flags; } ;


 int EOPNOTSUPP ;
 int USBG_IS_BOT ;
 struct f_uas* to_f_uas (struct usb_function*) ;
 int usbg_bot_setup (struct usb_function*,struct usb_ctrlrequest const*) ;

__attribute__((used)) static int tcm_setup(struct usb_function *f,
  const struct usb_ctrlrequest *ctrl)
{
 struct f_uas *fu = to_f_uas(f);

 if (!(fu->flags & USBG_IS_BOT))
  return -EOPNOTSUPP;

 return usbg_bot_setup(f, ctrl);
}
