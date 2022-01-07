
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_queue {int dummy; } ;


 int __lpfc_sli4_release_queue (struct lpfc_queue**) ;
 int kfree (struct lpfc_queue**) ;

__attribute__((used)) static inline void
lpfc_sli4_release_queues(struct lpfc_queue ***qs, int max)
{
 int idx;

 if (*qs == ((void*)0))
  return;

 for (idx = 0; idx < max; idx++)
  __lpfc_sli4_release_queue(&(*qs)[idx]);

 kfree(*qs);
 *qs = ((void*)0);
}
