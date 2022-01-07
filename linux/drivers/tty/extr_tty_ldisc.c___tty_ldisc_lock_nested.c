
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc_sem; } ;


 int LDISC_SEM_OTHER ;
 int ldsem_down_write_nested (int *,int ,unsigned long) ;

__attribute__((used)) static inline int
__tty_ldisc_lock_nested(struct tty_struct *tty, unsigned long timeout)
{
 return ldsem_down_write_nested(&tty->ldisc_sem,
           LDISC_SEM_OTHER, timeout);
}
