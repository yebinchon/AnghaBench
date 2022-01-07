
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct hvc_struct {size_t index; int port; int lock; } ;


 size_t MAX_NR_HVC_CONSOLES ;
 int ** cons_ops ;
 int console_lock () ;
 int console_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_put (int *) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_vhangup (struct tty_struct*) ;
 int* vtermnos ;

int hvc_remove(struct hvc_struct *hp)
{
 unsigned long flags;
 struct tty_struct *tty;

 tty = tty_port_tty_get(&hp->port);

 console_lock();
 spin_lock_irqsave(&hp->lock, flags);
 if (hp->index < MAX_NR_HVC_CONSOLES) {
  vtermnos[hp->index] = -1;
  cons_ops[hp->index] = ((void*)0);
 }



 spin_unlock_irqrestore(&hp->lock, flags);
 console_unlock();







 tty_port_put(&hp->port);




 if (tty) {
  tty_vhangup(tty);
  tty_kref_put(tty);
 }
 return 0;
}
