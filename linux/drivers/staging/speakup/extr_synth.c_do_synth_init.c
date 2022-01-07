
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct var_t {scalar_t__ var_id; } ;
struct TYPE_7__ {scalar_t__ name; } ;
struct spk_synth {scalar_t__ checkval; scalar_t__ (* probe ) (struct spk_synth*) ;int flags; TYPE_3__ attributes; int long_name; struct var_t* vars; int init; int full; int jiffies; int trigger; int delay; int name; scalar_t__ alive; } ;
struct TYPE_5__ {int default_val; int value; } ;
struct TYPE_6__ {TYPE_1__ n; } ;
struct TYPE_8__ {TYPE_2__ u; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ MAXVARS ;
 scalar_t__ SYNTH_CHECK ;
 int pr_warn (char*,...) ;
 int speakup_event ;
 int speakup_kobj ;
 int speakup_register_var (struct var_t*) ;
 scalar_t__ speakup_task ;
 int spk_quiet_boot ;
 scalar_t__ stub1 (struct spk_synth*) ;
 struct spk_synth* synth ;
 int synth_flags ;
 int synth_printf (char*,int ) ;
 int synth_release () ;
 TYPE_4__* synth_time_vars ;
 scalar_t__ sysfs_create_group (int ,TYPE_3__*) ;
 int wake_up_interruptible_all (int *) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static int do_synth_init(struct spk_synth *in_synth)
{
 struct var_t *var;

 synth_release();
 if (in_synth->checkval != SYNTH_CHECK)
  return -EINVAL;
 synth = in_synth;
 synth->alive = 0;
 pr_warn("synth probe\n");
 if (synth->probe(synth) < 0) {
  pr_warn("%s: device probe failed\n", in_synth->name);
  synth = ((void*)0);
  return -ENODEV;
 }
 synth_time_vars[0].u.n.value =
  synth_time_vars[0].u.n.default_val = synth->delay;
 synth_time_vars[1].u.n.value =
  synth_time_vars[1].u.n.default_val = synth->trigger;
 synth_time_vars[2].u.n.value =
  synth_time_vars[2].u.n.default_val = synth->jiffies;
 synth_time_vars[3].u.n.value =
  synth_time_vars[3].u.n.default_val = synth->full;
 synth_printf("%s", synth->init);
 for (var = synth->vars;
  (var->var_id >= 0) && (var->var_id < MAXVARS); var++)
  speakup_register_var(var);
 if (!spk_quiet_boot)
  synth_printf("%s found\n", synth->long_name);
 if (synth->attributes.name &&
     sysfs_create_group(speakup_kobj, &synth->attributes) < 0)
  return -ENOMEM;
 synth_flags = synth->flags;
 wake_up_interruptible_all(&speakup_event);
 if (speakup_task)
  wake_up_process(speakup_task);
 return 0;
}
