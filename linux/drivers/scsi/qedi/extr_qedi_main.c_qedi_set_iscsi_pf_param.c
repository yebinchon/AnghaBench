
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct qedi_glbl_q_params {int dummy; } ;
struct TYPE_6__ {int half_way_close_timeout; int num_queues; int two_msl_timer; int max_fin_rt; int log_page_size; int rqe_log_size; int cq_num_entries; int gl_cmd_pi; int gl_rq_pi; int rq_buffer_size; int * bdq_pbl_num_entries; int * bdq_pbl_base_addr; scalar_t__ glbl_q_params_addr; int debug_mode; void* num_uhq_pages_in_ring; void* num_r2tq_pages_in_ring; void* num_sq_pages_in_ring; int num_tasks; int num_cons; } ;
struct TYPE_5__ {TYPE_3__ iscsi_pf_params; } ;
struct qedi_ctx {int num_queues; TYPE_2__ pf_params; int bdq_pbl_list_num_entries; int bdq_pbl_list_dma; scalar_t__ hw_p_cpuq; int dbg_ctx; int p_cpuq; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 size_t BDQ_ID_RQ ;
 int GFP_KERNEL ;
 int MAX_OUTSTANDING_TASKS_PER_CON ;
 int MIN_NUM_CPUS_MSIX (struct qedi_ctx*) ;
 int QEDI_BDQ_BUF_SIZE ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_INFO (int *,int ,char*,int) ;
 int QEDI_LOG_INFO ;
 int QEDI_MAX_ISCSI_CONNS_PER_HBA ;
 int QEDI_MAX_ISCSI_TASK ;
 int QEDI_PAGE_SIZE ;
 int QEDI_PROTO_CQ_PROD_IDX ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int qedi_alloc_global_queues (struct qedi_ctx*) ;
 int qedi_fw_debug ;

__attribute__((used)) static int qedi_set_iscsi_pf_param(struct qedi_ctx *qedi)
{
 u8 num_sq_pages;
 u32 log_page_size;
 int rval = 0;


 num_sq_pages = (MAX_OUTSTANDING_TASKS_PER_CON * 8) / QEDI_PAGE_SIZE;

 qedi->num_queues = MIN_NUM_CPUS_MSIX(qedi);

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
    "Number of CQ count is %d\n", qedi->num_queues);

 memset(&qedi->pf_params.iscsi_pf_params, 0,
        sizeof(qedi->pf_params.iscsi_pf_params));

 qedi->p_cpuq = dma_alloc_coherent(&qedi->pdev->dev,
   qedi->num_queues * sizeof(struct qedi_glbl_q_params),
   &qedi->hw_p_cpuq, GFP_KERNEL);
 if (!qedi->p_cpuq) {
  QEDI_ERR(&qedi->dbg_ctx, "dma_alloc_coherent fail\n");
  rval = -1;
  goto err_alloc_mem;
 }

 rval = qedi_alloc_global_queues(qedi);
 if (rval) {
  QEDI_ERR(&qedi->dbg_ctx, "Global queue allocation failed.\n");
  rval = -1;
  goto err_alloc_mem;
 }

 qedi->pf_params.iscsi_pf_params.num_cons = QEDI_MAX_ISCSI_CONNS_PER_HBA;
 qedi->pf_params.iscsi_pf_params.num_tasks = QEDI_MAX_ISCSI_TASK;
 qedi->pf_params.iscsi_pf_params.half_way_close_timeout = 10;
 qedi->pf_params.iscsi_pf_params.num_sq_pages_in_ring = num_sq_pages;
 qedi->pf_params.iscsi_pf_params.num_r2tq_pages_in_ring = num_sq_pages;
 qedi->pf_params.iscsi_pf_params.num_uhq_pages_in_ring = num_sq_pages;
 qedi->pf_params.iscsi_pf_params.num_queues = qedi->num_queues;
 qedi->pf_params.iscsi_pf_params.debug_mode = qedi_fw_debug;
 qedi->pf_params.iscsi_pf_params.two_msl_timer = 4000;
 qedi->pf_params.iscsi_pf_params.max_fin_rt = 2;

 for (log_page_size = 0 ; log_page_size < 32 ; log_page_size++) {
  if ((1 << log_page_size) == QEDI_PAGE_SIZE)
   break;
 }
 qedi->pf_params.iscsi_pf_params.log_page_size = log_page_size;

 qedi->pf_params.iscsi_pf_params.glbl_q_params_addr =
          (u64)qedi->hw_p_cpuq;





 qedi->pf_params.iscsi_pf_params.rqe_log_size = 8;

 qedi->pf_params.iscsi_pf_params.bdq_pbl_base_addr[BDQ_ID_RQ] =
       qedi->bdq_pbl_list_dma;
 qedi->pf_params.iscsi_pf_params.bdq_pbl_num_entries[BDQ_ID_RQ] =
      qedi->bdq_pbl_list_num_entries;
 qedi->pf_params.iscsi_pf_params.rq_buffer_size = QEDI_BDQ_BUF_SIZE;


 qedi->pf_params.iscsi_pf_params.cq_num_entries = 2048;

 qedi->pf_params.iscsi_pf_params.gl_rq_pi = QEDI_PROTO_CQ_PROD_IDX;
 qedi->pf_params.iscsi_pf_params.gl_cmd_pi = 1;

err_alloc_mem:
 return rval;
}
