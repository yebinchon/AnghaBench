
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ sli_intr; scalar_t__ sli_prev_intr; scalar_t__ sli_ips; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {int eratt_poll_interval; int eratt_poll; TYPE_2__ sli; } ;


 int do_div (scalar_t__,int) ;
 int eratt_poll ;
 struct lpfc_hba* from_timer (struct lpfc_hba*,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ lpfc_sli_check_eratt (struct lpfc_hba*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

void lpfc_poll_eratt(struct timer_list *t)
{
 struct lpfc_hba *phba;
 uint32_t eratt = 0;
 uint64_t sli_intr, cnt;

 phba = from_timer(phba, t, eratt_poll);


 sli_intr = phba->sli.slistat.sli_intr;

 if (phba->sli.slistat.sli_prev_intr > sli_intr)
  cnt = (((uint64_t)(-1) - phba->sli.slistat.sli_prev_intr) +
   sli_intr);
 else
  cnt = (sli_intr - phba->sli.slistat.sli_prev_intr);


 do_div(cnt, phba->eratt_poll_interval);
 phba->sli.slistat.sli_ips = cnt;

 phba->sli.slistat.sli_prev_intr = sli_intr;


 eratt = lpfc_sli_check_eratt(phba);

 if (eratt)

  lpfc_worker_wake_up(phba);
 else

  mod_timer(&phba->eratt_poll,
     jiffies +
     msecs_to_jiffies(1000 * phba->eratt_poll_interval));
 return;
}
