
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_fsm {int hnp_polling_work; int host_req_flag; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int T_HOST_REQ_POLL ;
 int msecs_to_jiffies (int ) ;
 int otg_hnp_polling_work ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void otg_start_hnp_polling(struct otg_fsm *fsm)
{




 if (!fsm->host_req_flag)
  return;

 INIT_DELAYED_WORK(&fsm->hnp_polling_work, otg_hnp_polling_work);
 schedule_delayed_work(&fsm->hnp_polling_work,
     msecs_to_jiffies(T_HOST_REQ_POLL));
}
