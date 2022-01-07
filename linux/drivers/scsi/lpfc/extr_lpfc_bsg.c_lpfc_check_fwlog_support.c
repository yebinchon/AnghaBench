
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_ras_fwlog {int ras_hwsupport; int ras_enabled; } ;
struct lpfc_hba {struct lpfc_ras_fwlog ras_fwlog; } ;


 int EACCES ;
 int EPERM ;

int
lpfc_check_fwlog_support(struct lpfc_hba *phba)
{
 struct lpfc_ras_fwlog *ras_fwlog = ((void*)0);

 ras_fwlog = &phba->ras_fwlog;

 if (ras_fwlog->ras_hwsupport == 0)
  return -EACCES;
 else if (ras_fwlog->ras_enabled == 0)
  return -EPERM;
 else
  return 0;
}
