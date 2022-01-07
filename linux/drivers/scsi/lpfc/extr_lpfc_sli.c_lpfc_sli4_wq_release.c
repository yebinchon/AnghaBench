
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_queue {int hba_index; int entry_count; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static uint32_t
lpfc_sli4_wq_release(struct lpfc_queue *q, uint32_t index)
{
 uint32_t released = 0;


 if (unlikely(!q))
  return 0;

 if (q->hba_index == index)
  return 0;
 do {
  q->hba_index = ((q->hba_index + 1) % q->entry_count);
  released++;
 } while (q->hba_index != index);
 return released;
}
