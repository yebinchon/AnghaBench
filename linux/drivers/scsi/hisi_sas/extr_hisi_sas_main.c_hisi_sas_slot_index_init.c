
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int slot_index_count; } ;


 int hisi_sas_slot_index_clear (struct hisi_hba*,int) ;

__attribute__((used)) static void hisi_sas_slot_index_init(struct hisi_hba *hisi_hba)
{
 int i;

 for (i = 0; i < hisi_hba->slot_index_count; ++i)
  hisi_sas_slot_index_clear(hisi_hba, i);
}
