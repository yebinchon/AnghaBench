
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usba_udc {int int_enb_cache; } ;


 int INT_ENB ;
 int usba_writel (struct usba_udc*,int ,int) ;

__attribute__((used)) static inline void usba_int_enb_clear(struct usba_udc *udc, u32 mask)
{
 u32 val;

 val = udc->int_enb_cache & ~mask;
 usba_writel(udc, INT_ENB, val);
 udc->int_enb_cache = val;
}
