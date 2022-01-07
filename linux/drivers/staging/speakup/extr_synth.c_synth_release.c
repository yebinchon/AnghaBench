
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct var_t {scalar_t__ var_id; } ;
struct TYPE_6__ {int spinlock; } ;
struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_5__ {int (* release ) () ;struct var_t* vars; TYPE_1__ attributes; scalar_t__ alive; int name; } ;


 scalar_t__ MAXVARS ;
 int del_timer (int *) ;
 int pr_info (char*,int ) ;
 TYPE_3__ speakup_info ;
 int speakup_kobj ;
 int speakup_unregister_var (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 TYPE_2__* synth ;
 int sysfs_remove_group (int ,TYPE_1__*) ;
 int thread_timer ;

void synth_release(void)
{
 struct var_t *var;
 unsigned long flags;

 if (!synth)
  return;
 spin_lock_irqsave(&speakup_info.spinlock, flags);
 pr_info("releasing synth %s\n", synth->name);
 synth->alive = 0;
 del_timer(&thread_timer);
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 if (synth->attributes.name)
  sysfs_remove_group(speakup_kobj, &synth->attributes);
 for (var = synth->vars; var->var_id != MAXVARS; var++)
  speakup_unregister_var(var->var_id);
 synth->release();
 synth = ((void*)0);
}
