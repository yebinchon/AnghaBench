
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_list {int dummy; } ;
struct beiscsi_hba {scalar_t__ ue2rp; int recover_port; int wq; } ;


 scalar_t__ BEISCSI_UE_DETECT_INTERVAL ;
 int beiscsi_detect_tpe (struct beiscsi_hba*) ;
 struct beiscsi_hba* from_timer (int ,struct timer_list*,int ) ;
 int hw_check ;
 int msecs_to_jiffies (int) ;
 struct beiscsi_hba* phba ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void beiscsi_hw_tpe_check(struct timer_list *t)
{
 struct beiscsi_hba *phba = from_timer(phba, t, hw_check);
 u32 wait;


 if (!beiscsi_detect_tpe(phba))
  return;


 wait = 4000;
 if (phba->ue2rp > BEISCSI_UE_DETECT_INTERVAL)
  wait = phba->ue2rp - BEISCSI_UE_DETECT_INTERVAL;
 queue_delayed_work(phba->wq, &phba->recover_port,
      msecs_to_jiffies(wait));
}
