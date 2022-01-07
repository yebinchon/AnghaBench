
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ sli_rev; int cfg_fcp_imax; } ;


 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_DEF_IMAX ;
 int LPFC_MAX_IMAX ;
 int LPFC_MIN_IMAX ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static int
lpfc_fcp_imax_init(struct lpfc_hba *phba, int val)
{
 if (phba->sli_rev != LPFC_SLI_REV4) {
  phba->cfg_fcp_imax = 0;
  return 0;
 }

 if ((val >= LPFC_MIN_IMAX && val <= LPFC_MAX_IMAX) ||
     (val == 0)) {
  phba->cfg_fcp_imax = val;
  return 0;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "3016 lpfc_fcp_imax: %d out of range, using default\n",
   val);
 phba->cfg_fcp_imax = LPFC_DEF_IMAX;

 return 0;
}
