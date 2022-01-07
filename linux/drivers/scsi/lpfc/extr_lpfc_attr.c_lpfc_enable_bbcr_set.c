
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_enable_bbcr; } ;
typedef int ssize_t ;


 int EINVAL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_DRIVER_NAME ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,...) ;
 scalar_t__ lpfc_rangecheck (int ,int ,int) ;

__attribute__((used)) static ssize_t
lpfc_enable_bbcr_set(struct lpfc_hba *phba, uint val)
{
 if (lpfc_rangecheck(val, 0, 1) && phba->sli_rev == LPFC_SLI_REV4) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3068 %s_enable_bbcr changed from %d to %d\n",
    LPFC_DRIVER_NAME, phba->cfg_enable_bbcr, val);
  phba->cfg_enable_bbcr = val;
  return 0;
 }
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "0451 %s_enable_bbcr cannot set to %d, range is 0, 1\n",
   LPFC_DRIVER_NAME, val);
 return -EINVAL;
}
