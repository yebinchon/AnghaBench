
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {void* slot_index_tags; } ;


 int clear_bit (int,void*) ;

__attribute__((used)) static void hisi_sas_slot_index_clear(struct hisi_hba *hisi_hba, int slot_idx)
{
 void *bitmap = hisi_hba->slot_index_tags;

 clear_bit(slot_idx, bitmap);
}
