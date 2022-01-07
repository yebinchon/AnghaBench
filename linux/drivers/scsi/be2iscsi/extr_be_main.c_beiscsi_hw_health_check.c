
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int function; } ;
struct beiscsi_hba {TYPE_1__ hw_check; int state; int sess_work; int wq; } ;


 int BEISCSI_HBA_UER_SUPP ;
 int BEISCSI_UE_DETECT_INTERVAL ;
 int KERN_ERR ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*,int ) ;
 scalar_t__ beiscsi_detect_ue (struct beiscsi_hba*) ;
 int beiscsi_hw_tpe_check ;
 struct beiscsi_hba* from_timer (int ,struct timer_list*,int ) ;
 int hw_check ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct beiscsi_hba* phba ;
 int queue_work (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void beiscsi_hw_health_check(struct timer_list *t)
{
 struct beiscsi_hba *phba = from_timer(phba, t, hw_check);

 beiscsi_detect_ue(phba);
 if (beiscsi_detect_ue(phba)) {
  __beiscsi_log(phba, KERN_ERR,
         "BM_%d : port in error: %lx\n", phba->state);

  queue_work(phba->wq, &phba->sess_work);


  if (!test_bit(BEISCSI_HBA_UER_SUPP, &phba->state))
   return;

  phba->hw_check.function = beiscsi_hw_tpe_check;
 }

 mod_timer(&phba->hw_check,
    jiffies + msecs_to_jiffies(BEISCSI_UE_DETECT_INTERVAL));
}
