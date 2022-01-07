
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sclp_vt220_flush_buffer () ;
 int sclp_vt220_lock ;
 int sclp_vt220_suspended ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sclp_vt220_suspend(void)
{
 unsigned long flags;

 spin_lock_irqsave(&sclp_vt220_lock, flags);
 sclp_vt220_suspended = 1;
 spin_unlock_irqrestore(&sclp_vt220_lock, flags);
 __sclp_vt220_flush_buffer();
}
