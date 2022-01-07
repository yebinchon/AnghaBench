
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct r8a66597 {int lock; } ;


 int DPRPU ;
 int SYSCFG0 ;
 struct r8a66597* gadget_to_r8a66597 (struct usb_gadget*) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int r8a66597_pullup(struct usb_gadget *gadget, int is_on)
{
 struct r8a66597 *r8a66597 = gadget_to_r8a66597(gadget);
 unsigned long flags;

 spin_lock_irqsave(&r8a66597->lock, flags);
 if (is_on)
  r8a66597_bset(r8a66597, DPRPU, SYSCFG0);
 else
  r8a66597_bclr(r8a66597, DPRPU, SYSCFG0);
 spin_unlock_irqrestore(&r8a66597->lock, flags);

 return 0;
}
