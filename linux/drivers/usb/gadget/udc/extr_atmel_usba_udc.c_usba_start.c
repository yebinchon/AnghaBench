
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int lock; scalar_t__ int_enb_cache; scalar_t__ suspended; } ;


 int CTRL ;
 int INT_CLR ;
 int INT_ENB ;
 int USBA_DET_SUSPEND ;
 int USBA_ENABLE_MASK ;
 int USBA_END_OF_RESET ;
 int USBA_END_OF_RESUME ;
 int USBA_WAKE_UP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_clock (struct usba_udc*) ;
 int toggle_bias (struct usba_udc*,int) ;
 int usba_int_enb_set (struct usba_udc*,int) ;
 int usba_writel (struct usba_udc*,int ,int) ;

__attribute__((used)) static int usba_start(struct usba_udc *udc)
{
 unsigned long flags;
 int ret;

 ret = start_clock(udc);
 if (ret)
  return ret;

 if (udc->suspended)
  return 0;

 spin_lock_irqsave(&udc->lock, flags);
 toggle_bias(udc, 1);
 usba_writel(udc, CTRL, USBA_ENABLE_MASK);

 usba_writel(udc, INT_ENB, 0);
 udc->int_enb_cache = 0;
 usba_writel(udc, INT_CLR,
  USBA_END_OF_RESET|USBA_END_OF_RESUME
  |USBA_DET_SUSPEND|USBA_WAKE_UP);

 usba_int_enb_set(udc, USBA_END_OF_RESET);
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
