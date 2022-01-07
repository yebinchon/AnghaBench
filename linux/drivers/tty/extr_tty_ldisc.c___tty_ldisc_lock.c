
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc_sem; } ;


 int ldsem_down_write (int *,unsigned long) ;

__attribute__((used)) static inline int
__tty_ldisc_lock(struct tty_struct *tty, unsigned long timeout)
{
 return ldsem_down_write(&tty->ldisc_sem, timeout);
}
