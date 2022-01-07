
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;
struct lpfc_acqe_link {int dummy; } ;


 int KERN_ERR ;
 int LOG_INIT ;




 int bf_get (int ,struct lpfc_acqe_link*) ;
 int lpfc_acqe_link_fault ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static void
lpfc_sli4_parse_latt_fault(struct lpfc_hba *phba,
      struct lpfc_acqe_link *acqe_link)
{
 switch (bf_get(lpfc_acqe_link_fault, acqe_link)) {
 case 129:
 case 131:
 case 128:
 case 130:
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0398 Unknown link fault code: x%x\n",
    bf_get(lpfc_acqe_link_fault, acqe_link));
  break;
 }
}
