
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_queue {int dummy; } ;


 int lpfc_sli4_queue_free (struct lpfc_queue*) ;

__attribute__((used)) static inline void
__lpfc_sli4_release_queue(struct lpfc_queue **qp)
{
 if (*qp != ((void*)0)) {
  lpfc_sli4_queue_free(*qp);
  *qp = ((void*)0);
 }
}
