
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TCO_CNT (int ) ;
 int TCO_CNT_TCOHALT ;
 int inl (int ) ;
 int outl (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tco_lock ;
 int tcobase ;

__attribute__((used)) static void tco_timer_stop(void)
{
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&tco_lock, flags);
 val = inl(TCO_CNT(tcobase));
 val |= TCO_CNT_TCOHALT;
 outl(val, TCO_CNT(tcobase));
 spin_unlock_irqrestore(&tco_lock, flags);
}
