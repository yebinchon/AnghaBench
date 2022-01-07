
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int work; int tty; } ;


 int EBUSY ;
 int WORK_CPU_UNBOUND ;
 scalar_t__ cmpxchg (int *,int *,struct tty_struct*) ;
 int schedule_work_on (int ,int *) ;
 TYPE_1__ speakup_paste_work ;
 int tty_kref_get (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;

int speakup_paste_selection(struct tty_struct *tty)
{
 tty_kref_get(tty);
 if (cmpxchg(&speakup_paste_work.tty, ((void*)0), tty)) {
  tty_kref_put(tty);
  return -EBUSY;
 }

 schedule_work_on(WORK_CPU_UNBOUND, &speakup_paste_work.work);
 return 0;
}
