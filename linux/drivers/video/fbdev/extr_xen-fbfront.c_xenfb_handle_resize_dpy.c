
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int resize_lock; scalar_t__ resize_dpy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xenfb_do_resize (struct xenfb_info*) ;
 int xenfb_queue_full (struct xenfb_info*) ;

__attribute__((used)) static void xenfb_handle_resize_dpy(struct xenfb_info *info)
{
 unsigned long flags;

 spin_lock_irqsave(&info->resize_lock, flags);
 if (info->resize_dpy) {
  if (!xenfb_queue_full(info)) {
   info->resize_dpy = 0;
   xenfb_do_resize(info);
  }
 }
 spin_unlock_irqrestore(&info->resize_lock, flags);
}
