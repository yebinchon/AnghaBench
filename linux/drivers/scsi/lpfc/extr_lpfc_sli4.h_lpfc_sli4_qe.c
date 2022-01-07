
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct lpfc_queue {void** q_pgs; size_t entry_cnt_per_pg; size_t entry_size; } ;



__attribute__((used)) static inline void *lpfc_sli4_qe(struct lpfc_queue *q, uint16_t idx)
{
 return q->q_pgs[idx / q->entry_cnt_per_pg] +
  (q->entry_size * (idx % q->entry_cnt_per_pg));
}
