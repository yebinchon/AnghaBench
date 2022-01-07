
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_rpi_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ extents_in_use; int rpi_hdrs_in_use; int lpfc_rpi_hdr_list; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 int EIO ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*) ;
 struct lpfc_rpi_hdr* lpfc_sli4_create_rpi_hdr (struct lpfc_hba*) ;
 int lpfc_sli4_remove_rpis (struct lpfc_hba*) ;

int
lpfc_sli4_init_rpi_hdrs(struct lpfc_hba *phba)
{
 int rc = 0;
 struct lpfc_rpi_hdr *rpi_hdr;

 INIT_LIST_HEAD(&phba->sli4_hba.lpfc_rpi_hdr_list);
 if (!phba->sli4_hba.rpi_hdrs_in_use)
  return rc;
 if (phba->sli4_hba.extents_in_use)
  return -EIO;

 rpi_hdr = lpfc_sli4_create_rpi_hdr(phba);
 if (!rpi_hdr) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
    "0391 Error during rpi post operation\n");
  lpfc_sli4_remove_rpis(phba);
  rc = -ENODEV;
 }

 return rc;
}
