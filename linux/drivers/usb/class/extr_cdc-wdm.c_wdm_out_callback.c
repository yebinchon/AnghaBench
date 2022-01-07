
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int wait; int flags; int * outbuf; int iuspin; int werr; } ;
struct urb {int status; struct wdm_device* context; } ;


 int WDM_IN_USE ;
 int clear_bit (int ,int *) ;
 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void wdm_out_callback(struct urb *urb)
{
 struct wdm_device *desc;
 unsigned long flags;

 desc = urb->context;
 spin_lock_irqsave(&desc->iuspin, flags);
 desc->werr = urb->status;
 spin_unlock_irqrestore(&desc->iuspin, flags);
 kfree(desc->outbuf);
 desc->outbuf = ((void*)0);
 clear_bit(WDM_IN_USE, &desc->flags);
 wake_up(&desc->wait);
}
