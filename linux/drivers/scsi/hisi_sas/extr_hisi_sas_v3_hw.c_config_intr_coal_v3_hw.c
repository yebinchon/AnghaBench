
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int intr_coal_ticks; int intr_coal_count; } ;


 int INT_COAL_EN ;
 int OQ_INT_COAL_CNT ;
 int OQ_INT_COAL_TIME ;
 int hisi_sas_stop_phys (struct hisi_hba*) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int) ;
 int phys_init_v3_hw (struct hisi_hba*) ;

__attribute__((used)) static void config_intr_coal_v3_hw(struct hisi_hba *hisi_hba)
{

 hisi_sas_stop_phys(hisi_hba);

 if (hisi_hba->intr_coal_ticks == 0 ||
     hisi_hba->intr_coal_count == 0) {
  hisi_sas_write32(hisi_hba, INT_COAL_EN, 0x1);
  hisi_sas_write32(hisi_hba, OQ_INT_COAL_TIME, 0x1);
  hisi_sas_write32(hisi_hba, OQ_INT_COAL_CNT, 0x1);
 } else {
  hisi_sas_write32(hisi_hba, INT_COAL_EN, 0x3);
  hisi_sas_write32(hisi_hba, OQ_INT_COAL_TIME,
     hisi_hba->intr_coal_ticks);
  hisi_sas_write32(hisi_hba, OQ_INT_COAL_CNT,
     hisi_hba->intr_coal_count);
 }
 phys_init_v3_hw(hisi_hba);
}
