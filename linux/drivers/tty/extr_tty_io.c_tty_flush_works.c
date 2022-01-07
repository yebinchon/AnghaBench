
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* link; int hangup_work; int SAK_work; } ;
struct TYPE_2__ {int hangup_work; int SAK_work; } ;


 int flush_work (int *) ;

__attribute__((used)) static void tty_flush_works(struct tty_struct *tty)
{
 flush_work(&tty->SAK_work);
 flush_work(&tty->hangup_work);
 if (tty->link) {
  flush_work(&tty->link->SAK_work);
  flush_work(&tty->link->hangup_work);
 }
}
