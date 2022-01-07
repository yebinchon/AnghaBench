
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int dummy; } ;
typedef enum cfg_task_t { ____Placeholder_cfg_task_t } cfg_task_t ;


 int cfg_lock ;
 int cfg_none ;
 int chp_cfg_fetch_task (struct chp_id*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool cfg_idle(void)
{
 struct chp_id chpid;
 enum cfg_task_t t;

 spin_lock(&cfg_lock);
 t = chp_cfg_fetch_task(&chpid);
 spin_unlock(&cfg_lock);

 return t == cfg_none;
}
