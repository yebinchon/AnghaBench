
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct guas_setup_wq {unsigned int alt; int work; struct f_uas* fu; } ;
struct f_uas {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int USB_GADGET_DELAYED_STATUS ;
 unsigned int USB_G_ALT_INT_BBB ;
 unsigned int USB_G_ALT_INT_UAS ;
 struct guas_setup_wq* kmalloc (int,int ) ;
 int schedule_work (int *) ;
 int tcm_delayed_set_alt ;
 struct f_uas* to_f_uas (struct usb_function*) ;

__attribute__((used)) static int tcm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_uas *fu = to_f_uas(f);

 if ((alt == USB_G_ALT_INT_BBB) || (alt == USB_G_ALT_INT_UAS)) {
  struct guas_setup_wq *work;

  work = kmalloc(sizeof(*work), GFP_ATOMIC);
  if (!work)
   return -ENOMEM;
  INIT_WORK(&work->work, tcm_delayed_set_alt);
  work->fu = fu;
  work->alt = alt;
  schedule_work(&work->work);
  return USB_GADGET_DELAYED_STATUS;
 }
 return -EOPNOTSUPP;
}
