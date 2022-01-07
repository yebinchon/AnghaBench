
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int tty_ldisc_lock_pair_timeout (struct tty_struct*,struct tty_struct*,int ) ;

__attribute__((used)) static void tty_ldisc_lock_pair(struct tty_struct *tty, struct tty_struct *tty2)
{
 tty_ldisc_lock_pair_timeout(tty, tty2, MAX_SCHEDULE_TIMEOUT);
}
