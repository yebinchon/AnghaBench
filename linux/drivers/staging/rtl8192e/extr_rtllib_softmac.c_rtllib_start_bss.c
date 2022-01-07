
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {scalar_t__ state; int lock; int global_domain; } ;


 int IS_COUNTRY_IE_VALID (struct rtllib_device*) ;
 scalar_t__ IS_DOT11D_ENABLE (struct rtllib_device*) ;
 scalar_t__ RTLLIB_NOLINK ;
 int rtllib_softmac_check_all_nets (struct rtllib_device*) ;
 int rtllib_start_scan (struct rtllib_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtllib_start_bss(struct rtllib_device *ieee)
{
 unsigned long flags;

 if (IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee)) {
  if (!ieee->global_domain)
   return;
 }





 rtllib_softmac_check_all_nets(ieee);
 spin_lock_irqsave(&ieee->lock, flags);

 if (ieee->state == RTLLIB_NOLINK)
  rtllib_start_scan(ieee);
 spin_unlock_irqrestore(&ieee->lock, flags);
}
