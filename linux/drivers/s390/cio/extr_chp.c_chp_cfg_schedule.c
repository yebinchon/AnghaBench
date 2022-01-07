
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int id; int cssid; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int) ;
 int cfg_configure ;
 int cfg_deconfigure ;
 int cfg_lock ;
 int cfg_set_task (struct chp_id,int ) ;
 int cfg_work ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void chp_cfg_schedule(struct chp_id chpid, int configure)
{
 CIO_MSG_EVENT(2, "chp_cfg_sched%x.%02x=%d\n", chpid.cssid, chpid.id,
        configure);
 spin_lock(&cfg_lock);
 cfg_set_task(chpid, configure ? cfg_configure : cfg_deconfigure);
 spin_unlock(&cfg_lock);
 schedule_work(&cfg_work);
}
