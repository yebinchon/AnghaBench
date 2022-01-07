
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc_sem; } ;


 int ldsem_up_write (int *) ;

__attribute__((used)) static inline void __tty_ldisc_unlock(struct tty_struct *tty)
{
 ldsem_up_write(&tty->ldisc_sem);
}
