
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int sata_dev_bitmap; } ;


 int hw_init_v2_hw (struct hisi_hba*) ;
 int interrupt_init_v2_hw (struct hisi_hba*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int hisi_sas_v2_init(struct hisi_hba *hisi_hba)
{
 int rc;

 memset(hisi_hba->sata_dev_bitmap, 0, sizeof(hisi_hba->sata_dev_bitmap));

 rc = hw_init_v2_hw(hisi_hba);
 if (rc)
  return rc;

 rc = interrupt_init_v2_hw(hisi_hba);
 if (rc)
  return rc;

 return 0;
}
