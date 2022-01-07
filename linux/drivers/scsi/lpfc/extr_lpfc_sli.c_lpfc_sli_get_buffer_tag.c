
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int buffer_tag_count; int hbalock; } ;


 int QUE_BUFTAG_BIT ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

uint32_t
lpfc_sli_get_buffer_tag(struct lpfc_hba *phba)
{
 spin_lock_irq(&phba->hbalock);
 phba->buffer_tag_count++;




 phba->buffer_tag_count |= QUE_BUFTAG_BIT;
 spin_unlock_irq(&phba->hbalock);
 return phba->buffer_tag_count;
}
