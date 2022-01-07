
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_3__ {int sel_mode; scalar_t__ ye; scalar_t__ xe; scalar_t__ ys; scalar_t__ xs; } ;
struct TYPE_4__ {int work; TYPE_1__ sel; int tty; } ;


 int EBUSY ;
 int TIOCL_SELCHAR ;
 int WORK_CPU_UNBOUND ;
 scalar_t__ cmpxchg (int *,int *,struct tty_struct*) ;
 int schedule_work_on (int ,int *) ;
 TYPE_2__ speakup_sel_work ;
 scalar_t__ spk_xe ;
 scalar_t__ spk_xs ;
 scalar_t__ spk_ye ;
 scalar_t__ spk_ys ;
 int tty_kref_get (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 int wmb () ;

int speakup_set_selection(struct tty_struct *tty)
{






 tty_kref_get(tty);
 if (cmpxchg(&speakup_sel_work.tty, ((void*)0), tty)) {
  tty_kref_put(tty);
  return -EBUSY;
 }




 wmb();

 speakup_sel_work.sel.xs = spk_xs + 1;
 speakup_sel_work.sel.ys = spk_ys + 1;
 speakup_sel_work.sel.xe = spk_xe + 1;
 speakup_sel_work.sel.ye = spk_ye + 1;
 speakup_sel_work.sel.sel_mode = TIOCL_SELCHAR;

 schedule_work_on(WORK_CPU_UNBOUND, &speakup_sel_work.work);

 return 0;
}
