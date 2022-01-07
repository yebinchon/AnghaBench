
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int TCO_TMR (int ) ;
 int heartbeat ;
 int inb (int ) ;
 int outb (int,int ) ;
 unsigned char seconds_to_ticks (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tco_lock ;
 int tcobase ;

__attribute__((used)) static int tco_timer_set_heartbeat(int t)
{
 int ret = 0;
 unsigned char tmrval;
 unsigned long flags;
 u8 val;






 if (t < 0 || t > 0x3f)
  return -EINVAL;
 tmrval = seconds_to_ticks(t);


 if (tmrval > 0x3f || tmrval < 0x04)
  return -EINVAL;


 spin_lock_irqsave(&tco_lock, flags);
 val = inb(TCO_TMR(tcobase));
 val &= 0xc0;
 val |= tmrval;
 outb(val, TCO_TMR(tcobase));
 val = inb(TCO_TMR(tcobase));

 if ((val & 0x3f) != tmrval)
  ret = -EINVAL;
 spin_unlock_irqrestore(&tco_lock, flags);

 if (ret)
  return ret;

 heartbeat = t;
 return 0;
}
