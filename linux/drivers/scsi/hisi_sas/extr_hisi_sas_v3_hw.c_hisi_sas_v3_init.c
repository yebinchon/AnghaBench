
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int dummy; } ;


 int hw_init_v3_hw (struct hisi_hba*) ;
 int interrupt_init_v3_hw (struct hisi_hba*) ;

__attribute__((used)) static int hisi_sas_v3_init(struct hisi_hba *hisi_hba)
{
 int rc;

 rc = hw_init_v3_hw(hisi_hba);
 if (rc)
  return rc;

 rc = interrupt_init_v3_hw(hisi_hba);
 if (rc)
  return rc;

 return 0;
}
