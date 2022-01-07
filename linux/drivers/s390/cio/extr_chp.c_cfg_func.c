
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct chp_id {int id; int cssid; } ;
typedef enum cfg_task_t { ____Placeholder_cfg_task_t } cfg_task_t ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int) ;


 int cfg_get_task (struct chp_id) ;
 int cfg_lock ;

 int cfg_set_task (struct chp_id,int const) ;
 int cfg_wait_queue ;
 int cfg_work ;
 int chp_cfg_fetch_task (struct chp_id*) ;
 int chsc_chp_offline (struct chp_id) ;
 int chsc_chp_online (struct chp_id) ;
 int info_expire () ;
 int info_update () ;
 int schedule_work (int *) ;
 int sclp_chp_configure (struct chp_id) ;
 int sclp_chp_deconfigure (struct chp_id) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cfg_func(struct work_struct *work)
{
 struct chp_id chpid;
 enum cfg_task_t t;
 int rc;

 spin_lock(&cfg_lock);
 t = chp_cfg_fetch_task(&chpid);
 spin_unlock(&cfg_lock);

 switch (t) {
 case 130:
  rc = sclp_chp_configure(chpid);
  if (rc)
   CIO_MSG_EVENT(2, "chp: sclp_chp_configure(%x.%02x)="
          "%d\n", chpid.cssid, chpid.id, rc);
  else {
   info_expire();
   chsc_chp_online(chpid);
  }
  break;
 case 129:
  rc = sclp_chp_deconfigure(chpid);
  if (rc)
   CIO_MSG_EVENT(2, "chp: sclp_chp_deconfigure(%x.%02x)="
          "%d\n", chpid.cssid, chpid.id, rc);
  else {
   info_expire();
   chsc_chp_offline(chpid);
  }
  break;
 case 128:

  info_update();
  wake_up_interruptible(&cfg_wait_queue);
  return;
 }
 spin_lock(&cfg_lock);
 if (t == cfg_get_task(chpid))
  cfg_set_task(chpid, 128);
 spin_unlock(&cfg_lock);
 schedule_work(&cfg_work);
}
