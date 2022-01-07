
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct tb_switch {int authorized; TYPE_2__* tb; TYPE_1__ dev; int key; } ;
struct TYPE_6__ {int lock; } ;


 int EINVAL ;
 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int restart_syscall () ;
 int tb_domain_approve_switch (TYPE_2__*,struct tb_switch*) ;
 int tb_domain_approve_switch_key (TYPE_2__*,struct tb_switch*) ;
 int tb_domain_challenge_switch_key (TYPE_2__*,struct tb_switch*) ;

__attribute__((used)) static int tb_switch_set_authorized(struct tb_switch *sw, unsigned int val)
{
 int ret = -EINVAL;

 if (!mutex_trylock(&sw->tb->lock))
  return restart_syscall();

 if (sw->authorized)
  goto unlock;

 switch (val) {

 case 1:
  if (sw->key)
   ret = tb_domain_approve_switch_key(sw->tb, sw);
  else
   ret = tb_domain_approve_switch(sw->tb, sw);
  break;


 case 2:
  if (sw->key)
   ret = tb_domain_challenge_switch_key(sw->tb, sw);
  break;

 default:
  break;
 }

 if (!ret) {
  sw->authorized = val;

  kobject_uevent(&sw->dev.kobj, KOBJ_CHANGE);
 }

unlock:
 mutex_unlock(&sw->tb->lock);
 return ret;
}
