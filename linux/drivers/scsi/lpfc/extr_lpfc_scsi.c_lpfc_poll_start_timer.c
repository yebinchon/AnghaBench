
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;


 int lpfc_poll_rearm_timer (struct lpfc_hba*) ;

void lpfc_poll_start_timer(struct lpfc_hba * phba)
{
 lpfc_poll_rearm_timer(phba);
}
