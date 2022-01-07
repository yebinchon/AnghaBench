
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wqe_com; } ;
struct TYPE_6__ {int wqe_com; int payload_offset_len; } ;
struct TYPE_5__ {int wqe_com; } ;
union lpfc_wqe128 {TYPE_1__ fcp_trsp; TYPE_3__ fcp_treceive; TYPE_2__ fcp_tsend; } ;


 int CLASS3 ;
 int CMD_FCP_TRECEIVE64_WQE ;
 int CMD_FCP_TRSP64_WQE ;
 int CMD_FCP_TSEND64_WQE ;
 int FCP_COMMAND_TRECEIVE ;
 int FCP_COMMAND_TRSP ;
 int FCP_COMMAND_TSEND ;
 int LPFC_WQE_CQ_ID_DEFAULT ;
 int LPFC_WQE_IOD_NONE ;
 int LPFC_WQE_IOD_READ ;
 int LPFC_WQE_IOD_WRITE ;
 int LPFC_WQE_LENLOC_WORD12 ;
 int LPFC_WQE_LENLOC_WORD3 ;
 int PARM_REL_OFF ;
 int PARM_UNUSED ;
 int SLI4_CT_RPI ;
 int TXRDY_PAYLOAD_LEN ;
 int bf_set (int ,int *,int) ;
 union lpfc_wqe128 lpfc_treceive_cmd_template ;
 union lpfc_wqe128 lpfc_trsp_cmd_template ;
 union lpfc_wqe128 lpfc_tsend_cmd_template ;
 int memset (union lpfc_wqe128*,int ,int) ;
 int wqe_ag ;
 int wqe_ar ;
 int wqe_class ;
 int wqe_cmd_type ;
 int wqe_cmnd ;
 int wqe_cqid ;
 int wqe_ct ;
 int wqe_dbde ;
 int wqe_iod ;
 int wqe_irsp ;
 int wqe_irsplen ;
 int wqe_lenloc ;
 int wqe_nvme ;
 int wqe_pbde ;
 int wqe_pu ;
 int wqe_sup ;
 int wqe_wqes ;
 int wqe_xc ;

void
lpfc_nvmet_cmd_template(void)
{
 union lpfc_wqe128 *wqe;


 wqe = &lpfc_tsend_cmd_template;
 memset(wqe, 0, sizeof(union lpfc_wqe128));
 bf_set(wqe_cmnd, &wqe->fcp_tsend.wqe_com, CMD_FCP_TSEND64_WQE);
 bf_set(wqe_pu, &wqe->fcp_tsend.wqe_com, PARM_REL_OFF);
 bf_set(wqe_class, &wqe->fcp_tsend.wqe_com, CLASS3);
 bf_set(wqe_ct, &wqe->fcp_tsend.wqe_com, SLI4_CT_RPI);
 bf_set(wqe_ar, &wqe->fcp_tsend.wqe_com, 1);






 bf_set(wqe_nvme, &wqe->fcp_tsend.wqe_com, 1);
 bf_set(wqe_dbde, &wqe->fcp_tsend.wqe_com, 1);
 bf_set(wqe_wqes, &wqe->fcp_tsend.wqe_com, 0);
 bf_set(wqe_xc, &wqe->fcp_tsend.wqe_com, 1);
 bf_set(wqe_iod, &wqe->fcp_tsend.wqe_com, LPFC_WQE_IOD_WRITE);
 bf_set(wqe_lenloc, &wqe->fcp_tsend.wqe_com, LPFC_WQE_LENLOC_WORD12);


 bf_set(wqe_cmd_type, &wqe->fcp_tsend.wqe_com, FCP_COMMAND_TSEND);
 bf_set(wqe_cqid, &wqe->fcp_tsend.wqe_com, LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_sup, &wqe->fcp_tsend.wqe_com, 0);
 bf_set(wqe_irsp, &wqe->fcp_tsend.wqe_com, 0);
 bf_set(wqe_irsplen, &wqe->fcp_tsend.wqe_com, 0);
 bf_set(wqe_pbde, &wqe->fcp_tsend.wqe_com, 0);






 wqe = &lpfc_treceive_cmd_template;
 memset(wqe, 0, sizeof(union lpfc_wqe128));




 wqe->fcp_treceive.payload_offset_len = TXRDY_PAYLOAD_LEN;
 bf_set(wqe_cmnd, &wqe->fcp_treceive.wqe_com, CMD_FCP_TRECEIVE64_WQE);
 bf_set(wqe_pu, &wqe->fcp_treceive.wqe_com, PARM_REL_OFF);
 bf_set(wqe_class, &wqe->fcp_treceive.wqe_com, CLASS3);
 bf_set(wqe_ct, &wqe->fcp_treceive.wqe_com, SLI4_CT_RPI);
 bf_set(wqe_ar, &wqe->fcp_treceive.wqe_com, 0);






 bf_set(wqe_dbde, &wqe->fcp_treceive.wqe_com, 1);
 bf_set(wqe_wqes, &wqe->fcp_treceive.wqe_com, 0);
 bf_set(wqe_nvme, &wqe->fcp_treceive.wqe_com, 1);
 bf_set(wqe_iod, &wqe->fcp_treceive.wqe_com, LPFC_WQE_IOD_READ);
 bf_set(wqe_lenloc, &wqe->fcp_treceive.wqe_com, LPFC_WQE_LENLOC_WORD12);
 bf_set(wqe_xc, &wqe->fcp_tsend.wqe_com, 1);


 bf_set(wqe_cmd_type, &wqe->fcp_treceive.wqe_com, FCP_COMMAND_TRECEIVE);
 bf_set(wqe_cqid, &wqe->fcp_treceive.wqe_com, LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_sup, &wqe->fcp_treceive.wqe_com, 0);
 bf_set(wqe_irsp, &wqe->fcp_treceive.wqe_com, 0);
 bf_set(wqe_irsplen, &wqe->fcp_treceive.wqe_com, 0);
 bf_set(wqe_pbde, &wqe->fcp_treceive.wqe_com, 1);






 wqe = &lpfc_trsp_cmd_template;
 memset(wqe, 0, sizeof(union lpfc_wqe128));
 bf_set(wqe_cmnd, &wqe->fcp_trsp.wqe_com, CMD_FCP_TRSP64_WQE);
 bf_set(wqe_pu, &wqe->fcp_trsp.wqe_com, PARM_UNUSED);
 bf_set(wqe_class, &wqe->fcp_trsp.wqe_com, CLASS3);
 bf_set(wqe_ct, &wqe->fcp_trsp.wqe_com, SLI4_CT_RPI);
 bf_set(wqe_ag, &wqe->fcp_trsp.wqe_com, 1);






 bf_set(wqe_dbde, &wqe->fcp_trsp.wqe_com, 1);
 bf_set(wqe_nvme, &wqe->fcp_trsp.wqe_com, 1);
 bf_set(wqe_wqes, &wqe->fcp_trsp.wqe_com, 0);
 bf_set(wqe_xc, &wqe->fcp_trsp.wqe_com, 0);
 bf_set(wqe_iod, &wqe->fcp_trsp.wqe_com, LPFC_WQE_IOD_NONE);
 bf_set(wqe_lenloc, &wqe->fcp_trsp.wqe_com, LPFC_WQE_LENLOC_WORD3);


 bf_set(wqe_cmd_type, &wqe->fcp_trsp.wqe_com, FCP_COMMAND_TRSP);
 bf_set(wqe_cqid, &wqe->fcp_trsp.wqe_com, LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_sup, &wqe->fcp_trsp.wqe_com, 0);
 bf_set(wqe_irsp, &wqe->fcp_trsp.wqe_com, 0);
 bf_set(wqe_irsplen, &wqe->fcp_trsp.wqe_com, 0);
 bf_set(wqe_pbde, &wqe->fcp_trsp.wqe_com, 0);


}
