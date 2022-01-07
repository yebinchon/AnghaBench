
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct nozomi {int spin_mutex; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 struct nozomi* get_dc_by_tty (struct tty_struct*) ;
 int set_dtr (struct tty_struct*,int) ;
 int set_rts (struct tty_struct*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ntty_tiocmset(struct tty_struct *tty,
     unsigned int set, unsigned int clear)
{
 struct nozomi *dc = get_dc_by_tty(tty);
 unsigned long flags;

 spin_lock_irqsave(&dc->spin_mutex, flags);
 if (set & TIOCM_RTS)
  set_rts(tty, 1);
 else if (clear & TIOCM_RTS)
  set_rts(tty, 0);

 if (set & TIOCM_DTR)
  set_dtr(tty, 1);
 else if (clear & TIOCM_DTR)
  set_dtr(tty, 0);
 spin_unlock_irqrestore(&dc->spin_mutex, flags);

 return 0;
}
