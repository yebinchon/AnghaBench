
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct lpfc_hba {int sli_rev; scalar_t__ pci_dev_grp; } ;


 int ENODEV ;
 scalar_t__ LPFC_PCI_DEV_OC ;
 int LPFC_SLI_REV4 ;
 int lpfc_init_api_table_setup (struct lpfc_hba*,scalar_t__) ;
 int lpfc_mbox_api_table_setup (struct lpfc_hba*,scalar_t__) ;
 int lpfc_scsi_api_table_setup (struct lpfc_hba*,scalar_t__) ;
 int lpfc_sli_api_table_setup (struct lpfc_hba*,scalar_t__) ;

int
lpfc_api_table_setup(struct lpfc_hba *phba, uint8_t dev_grp)
{
 int rc;


 phba->pci_dev_grp = dev_grp;


 if (dev_grp == LPFC_PCI_DEV_OC)
  phba->sli_rev = LPFC_SLI_REV4;


 rc = lpfc_init_api_table_setup(phba, dev_grp);
 if (rc)
  return -ENODEV;

 rc = lpfc_scsi_api_table_setup(phba, dev_grp);
 if (rc)
  return -ENODEV;

 rc = lpfc_sli_api_table_setup(phba, dev_grp);
 if (rc)
  return -ENODEV;

 rc = lpfc_mbox_api_table_setup(phba, dev_grp);
 if (rc)
  return -ENODEV;

 return 0;
}
