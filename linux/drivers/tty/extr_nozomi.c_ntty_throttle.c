
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct nozomi {int spin_mutex; } ;


 int DBG1 (char*) ;
 struct nozomi* get_dc_by_tty (struct tty_struct*) ;
 int set_rts (struct tty_struct*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ntty_throttle(struct tty_struct *tty)
{
 struct nozomi *dc = get_dc_by_tty(tty);
 unsigned long flags;

 DBG1("THROTTLE");
 spin_lock_irqsave(&dc->spin_mutex, flags);
 set_rts(tty, 0);
 spin_unlock_irqrestore(&dc->spin_mutex, flags);
}
