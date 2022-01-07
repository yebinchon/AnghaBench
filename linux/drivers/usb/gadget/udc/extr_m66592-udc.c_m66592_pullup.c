
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct m66592 {int lock; } ;


 int M66592_DPRPU ;
 int M66592_SYSCFG ;
 struct m66592* gadget_to_m66592 (struct usb_gadget*) ;
 int m66592_bclr (struct m66592*,int ,int ) ;
 int m66592_bset (struct m66592*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m66592_pullup(struct usb_gadget *gadget, int is_on)
{
 struct m66592 *m66592 = gadget_to_m66592(gadget);
 unsigned long flags;

 spin_lock_irqsave(&m66592->lock, flags);
 if (is_on)
  m66592_bset(m66592, M66592_DPRPU, M66592_SYSCFG);
 else
  m66592_bclr(m66592, M66592_DPRPU, M66592_SYSCFG);
 spin_unlock_irqrestore(&m66592->lock, flags);

 return 0;
}
