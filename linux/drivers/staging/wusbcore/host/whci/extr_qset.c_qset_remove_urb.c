
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int usb_hcd; } ;
struct whc_urb {int dummy; } ;
struct whc_qset {int dummy; } ;
struct whc {int lock; struct wusbhc wusbhc; } ;
struct urb {struct whc_urb* hcpriv; } ;


 int kfree (struct whc_urb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_hcd_unlink_urb_from_ep (int *,struct urb*) ;
 int wusbhc_giveback_urb (struct wusbhc*,struct urb*,int) ;

void qset_remove_urb(struct whc *whc, struct whc_qset *qset,
       struct urb *urb, int status)
{
 struct wusbhc *wusbhc = &whc->wusbhc;
 struct whc_urb *wurb = urb->hcpriv;

 usb_hcd_unlink_urb_from_ep(&wusbhc->usb_hcd, urb);

 spin_unlock(&whc->lock);
 wusbhc_giveback_urb(wusbhc, urb, status);
 spin_lock(&whc->lock);

 kfree(wurb);
}
