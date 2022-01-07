
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numRiocb; } ;
struct TYPE_3__ {TYPE_2__ sli3; } ;
struct lpfc_sli_ring {size_t ringno; TYPE_1__ sli; } ;
struct lpfc_pgp {int rspPutInx; } ;
struct lpfc_hba {int work_hs; int work_ha; int link_state; struct lpfc_pgp* port_gp; } ;


 int HA_ERATT ;
 int HS_FFER3 ;
 int KERN_ERR ;
 int LOG_SLI ;
 int LPFC_HBA_ERROR ;
 int le32_to_cpu (int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,size_t,int ,int ) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_sli_rsp_pointers_error(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
 struct lpfc_pgp *pgp = &phba->port_gp[pring->ringno];




 lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "0312 Ring %d handler: portRspPut %d "
   "is bigger than rsp ring %d\n",
   pring->ringno, le32_to_cpu(pgp->rspPutInx),
   pring->sli.sli3.numRiocb);

 phba->link_state = LPFC_HBA_ERROR;





 phba->work_ha |= HA_ERATT;
 phba->work_hs = HS_FFER3;

 lpfc_worker_wake_up(phba);

 return;
}
