
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int tty; int work; } ;


 int cancel_work_sync (int *) ;
 TYPE_1__ speakup_sel_work ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* xchg (int *,int *) ;

void speakup_cancel_selection(void)
{
 struct tty_struct *tty;

 cancel_work_sync(&speakup_sel_work.work);




 tty = xchg(&speakup_sel_work.tty, ((void*)0));
 if (tty)
  tty_kref_put(tty);
}
