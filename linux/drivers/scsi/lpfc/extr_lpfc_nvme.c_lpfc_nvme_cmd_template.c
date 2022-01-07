
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int wqe_com; } ;
struct TYPE_5__ {int wqe_com; } ;
struct TYPE_4__ {int wqe_com; } ;
union lpfc_wqe128 {TYPE_3__ fcp_icmd; TYPE_2__ fcp_iwrite; TYPE_1__ fcp_iread; } ;


 int CLASS3 ;
 int CMD_FCP_ICMND64_WQE ;
 int CMD_FCP_IREAD64_WQE ;
 int CMD_FCP_IWRITE64_WQE ;
 int FCP_COMMAND ;
 int LPFC_WQE_CQ_ID_DEFAULT ;
 int LPFC_WQE_IOD_NONE ;
 int LPFC_WQE_IOD_READ ;
 int LPFC_WQE_IOD_WRITE ;
 int LPFC_WQE_LENLOC_NONE ;
 int LPFC_WQE_LENLOC_WORD4 ;
 int NVME_READ_CMD ;
 int NVME_WRITE_CMD ;
 int PARM_READ_CHECK ;
 int SLI4_CT_RPI ;
 int bf_set (int ,int *,int) ;
 union lpfc_wqe128 lpfc_icmnd_cmd_template ;
 union lpfc_wqe128 lpfc_iread_cmd_template ;
 union lpfc_wqe128 lpfc_iwrite_cmd_template ;
 int memset (union lpfc_wqe128*,int ,int) ;
 int wqe_class ;
 int wqe_cmd_type ;
 int wqe_cmnd ;
 int wqe_cqid ;
 int wqe_ct ;
 int wqe_dbde ;
 int wqe_iod ;
 int wqe_lenloc ;
 int wqe_nvme ;
 int wqe_pbde ;
 int wqe_pu ;
 int wqe_qosd ;
 int wqe_wqes ;

void
lpfc_nvme_cmd_template(void)
{
 union lpfc_wqe128 *wqe;


 wqe = &lpfc_iread_cmd_template;
 memset(wqe, 0, sizeof(union lpfc_wqe128));
 bf_set(wqe_cmnd, &wqe->fcp_iread.wqe_com, CMD_FCP_IREAD64_WQE);
 bf_set(wqe_pu, &wqe->fcp_iread.wqe_com, PARM_READ_CHECK);
 bf_set(wqe_class, &wqe->fcp_iread.wqe_com, CLASS3);
 bf_set(wqe_ct, &wqe->fcp_iread.wqe_com, SLI4_CT_RPI);






 bf_set(wqe_qosd, &wqe->fcp_iread.wqe_com, 0);
 bf_set(wqe_nvme, &wqe->fcp_iread.wqe_com, 1);
 bf_set(wqe_iod, &wqe->fcp_iread.wqe_com, LPFC_WQE_IOD_READ);
 bf_set(wqe_lenloc, &wqe->fcp_iread.wqe_com, LPFC_WQE_LENLOC_WORD4);
 bf_set(wqe_dbde, &wqe->fcp_iread.wqe_com, 0);
 bf_set(wqe_wqes, &wqe->fcp_iread.wqe_com, 1);


 bf_set(wqe_cmd_type, &wqe->fcp_iread.wqe_com, NVME_READ_CMD);
 bf_set(wqe_cqid, &wqe->fcp_iread.wqe_com, LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_pbde, &wqe->fcp_iread.wqe_com, 1);






 wqe = &lpfc_iwrite_cmd_template;
 memset(wqe, 0, sizeof(union lpfc_wqe128));
 bf_set(wqe_cmnd, &wqe->fcp_iwrite.wqe_com, CMD_FCP_IWRITE64_WQE);
 bf_set(wqe_pu, &wqe->fcp_iwrite.wqe_com, PARM_READ_CHECK);
 bf_set(wqe_class, &wqe->fcp_iwrite.wqe_com, CLASS3);
 bf_set(wqe_ct, &wqe->fcp_iwrite.wqe_com, SLI4_CT_RPI);






 bf_set(wqe_qosd, &wqe->fcp_iwrite.wqe_com, 0);
 bf_set(wqe_nvme, &wqe->fcp_iwrite.wqe_com, 1);
 bf_set(wqe_iod, &wqe->fcp_iwrite.wqe_com, LPFC_WQE_IOD_WRITE);
 bf_set(wqe_lenloc, &wqe->fcp_iwrite.wqe_com, LPFC_WQE_LENLOC_WORD4);
 bf_set(wqe_dbde, &wqe->fcp_iwrite.wqe_com, 0);
 bf_set(wqe_wqes, &wqe->fcp_iwrite.wqe_com, 1);


 bf_set(wqe_cmd_type, &wqe->fcp_iwrite.wqe_com, NVME_WRITE_CMD);
 bf_set(wqe_cqid, &wqe->fcp_iwrite.wqe_com, LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_pbde, &wqe->fcp_iwrite.wqe_com, 1);






 wqe = &lpfc_icmnd_cmd_template;
 memset(wqe, 0, sizeof(union lpfc_wqe128));
 bf_set(wqe_cmnd, &wqe->fcp_icmd.wqe_com, CMD_FCP_ICMND64_WQE);
 bf_set(wqe_pu, &wqe->fcp_icmd.wqe_com, 0);
 bf_set(wqe_class, &wqe->fcp_icmd.wqe_com, CLASS3);
 bf_set(wqe_ct, &wqe->fcp_icmd.wqe_com, SLI4_CT_RPI);






 bf_set(wqe_qosd, &wqe->fcp_icmd.wqe_com, 1);
 bf_set(wqe_nvme, &wqe->fcp_icmd.wqe_com, 1);
 bf_set(wqe_iod, &wqe->fcp_icmd.wqe_com, LPFC_WQE_IOD_NONE);
 bf_set(wqe_lenloc, &wqe->fcp_icmd.wqe_com, LPFC_WQE_LENLOC_NONE);
 bf_set(wqe_dbde, &wqe->fcp_icmd.wqe_com, 0);
 bf_set(wqe_wqes, &wqe->fcp_icmd.wqe_com, 1);


 bf_set(wqe_cmd_type, &wqe->fcp_icmd.wqe_com, FCP_COMMAND);
 bf_set(wqe_cqid, &wqe->fcp_icmd.wqe_com, LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_pbde, &wqe->fcp_icmd.wqe_com, 0);


}
