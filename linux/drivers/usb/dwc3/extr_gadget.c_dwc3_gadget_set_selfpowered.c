
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int is_selfpowered; } ;
struct dwc3 {int lock; } ;


 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_gadget_set_selfpowered(struct usb_gadget *g,
  int is_selfpowered)
{
 struct dwc3 *dwc = gadget_to_dwc(g);
 unsigned long flags;

 spin_lock_irqsave(&dwc->lock, flags);
 g->is_selfpowered = !!is_selfpowered;
 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;
}
