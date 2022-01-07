
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_uas {int flags; } ;


 int USBG_IS_BOT ;
 int USBG_IS_UAS ;
 int bot_cleanup_old_alt (struct f_uas*) ;
 struct f_uas* to_f_uas (struct usb_function*) ;
 int uasp_cleanup_old_alt (struct f_uas*) ;

__attribute__((used)) static void tcm_disable(struct usb_function *f)
{
 struct f_uas *fu = to_f_uas(f);

 if (fu->flags & USBG_IS_UAS)
  uasp_cleanup_old_alt(fu);
 else if (fu->flags & USBG_IS_BOT)
  bot_cleanup_old_alt(fu);
 fu->flags = 0;
}
