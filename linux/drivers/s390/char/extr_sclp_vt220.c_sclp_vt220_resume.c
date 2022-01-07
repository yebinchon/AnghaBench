
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_vt220_emit_current () ;
 int sclp_vt220_lock ;
 scalar_t__ sclp_vt220_suspended ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sclp_vt220_resume(void)
{
 unsigned long flags;

 spin_lock_irqsave(&sclp_vt220_lock, flags);
 sclp_vt220_suspended = 0;
 spin_unlock_irqrestore(&sclp_vt220_lock, flags);
 sclp_vt220_emit_current();
}
