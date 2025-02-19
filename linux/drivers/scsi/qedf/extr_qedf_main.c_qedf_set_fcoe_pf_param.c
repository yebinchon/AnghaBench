
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct qedf_glbl_q_params {int dummy; } ;
struct TYPE_5__ {int sq_num_pbl_pages; int cq_num_entries; int num_cqs; int mtu; int * bdq_pbl_num_entries; int * bdq_pbl_base_addr; int rq_buffer_size; int gl_cmd_pi; int gl_rq_pi; int log_page_size; scalar_t__ rq_buffer_log_size; scalar_t__ glbl_q_params_addr; int num_tasks; int num_cons; } ;
struct TYPE_6__ {TYPE_2__ fcoe_pf_params; } ;
struct qedf_ctx {int num_queues; TYPE_3__ pf_params; int dbg_ctx; int bdq_pbl_list; int bdq_pbl_list_num_entries; int bdq_pbl_list_dma; scalar_t__ hw_p_cpuq; int p_cpuq; TYPE_1__* pdev; } ;
struct fcoe_wqe {int dummy; } ;
struct fcoe_cqe {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int ALIGN (int,int) ;
 int FCOE_PARAMS_CQ_NUM_ENTRIES ;
 int FCOE_PARAMS_NUM_TASKS ;
 int GFP_KERNEL ;
 int MIN_NUM_CPUS_MSIX (struct qedf_ctx*) ;
 int QEDF_BDQ_BUF_SIZE ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_FCOE_PARAMS_GL_CMD_PI ;
 int QEDF_FCOE_PARAMS_GL_RQ_PI ;
 int QEDF_INFO (int *,int ,char*,int,...) ;
 int QEDF_LOG_DISC ;
 int QEDF_MAX_SESSIONS ;
 int QEDF_PAGE_SIZE ;
 int SQ_NUM_ENTRIES ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int ilog2 (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int qedf_alloc_global_queues (struct qedf_ctx*) ;

__attribute__((used)) static int qedf_set_fcoe_pf_param(struct qedf_ctx *qedf)
{
 u8 sq_num_pbl_pages;
 u32 sq_mem_size;
 u32 cq_mem_size;
 u32 cq_num_entries;
 int rval;
 qedf->num_queues = MIN_NUM_CPUS_MSIX(qedf);

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC, "Number of CQs is %d.\n",
     qedf->num_queues);

 qedf->p_cpuq = dma_alloc_coherent(&qedf->pdev->dev,
     qedf->num_queues * sizeof(struct qedf_glbl_q_params),
     &qedf->hw_p_cpuq, GFP_KERNEL);

 if (!qedf->p_cpuq) {
  QEDF_ERR(&(qedf->dbg_ctx), "dma_alloc_coherent failed.\n");
  return 1;
 }

 rval = qedf_alloc_global_queues(qedf);
 if (rval) {
  QEDF_ERR(&(qedf->dbg_ctx), "Global queue allocation "
     "failed.\n");
  return 1;
 }


 sq_mem_size = SQ_NUM_ENTRIES * sizeof(struct fcoe_wqe);
 sq_mem_size = ALIGN(sq_mem_size, QEDF_PAGE_SIZE);
 sq_num_pbl_pages = (sq_mem_size / QEDF_PAGE_SIZE);


 cq_mem_size = FCOE_PARAMS_CQ_NUM_ENTRIES * sizeof(struct fcoe_cqe);
 cq_mem_size = ALIGN(cq_mem_size, QEDF_PAGE_SIZE);
 cq_num_entries = cq_mem_size / sizeof(struct fcoe_cqe);

 memset(&(qedf->pf_params), 0, sizeof(qedf->pf_params));


 qedf->pf_params.fcoe_pf_params.num_cons = QEDF_MAX_SESSIONS;
 qedf->pf_params.fcoe_pf_params.num_tasks = FCOE_PARAMS_NUM_TASKS;
 qedf->pf_params.fcoe_pf_params.glbl_q_params_addr =
     (u64)qedf->hw_p_cpuq;
 qedf->pf_params.fcoe_pf_params.sq_num_pbl_pages = sq_num_pbl_pages;

 qedf->pf_params.fcoe_pf_params.rq_buffer_log_size = 0;

 qedf->pf_params.fcoe_pf_params.cq_num_entries = cq_num_entries;
 qedf->pf_params.fcoe_pf_params.num_cqs = qedf->num_queues;


 qedf->pf_params.fcoe_pf_params.log_page_size = ilog2(QEDF_PAGE_SIZE);

 qedf->pf_params.fcoe_pf_params.mtu = 9000;
 qedf->pf_params.fcoe_pf_params.gl_rq_pi = QEDF_FCOE_PARAMS_GL_RQ_PI;
 qedf->pf_params.fcoe_pf_params.gl_cmd_pi = QEDF_FCOE_PARAMS_GL_CMD_PI;


 qedf->pf_params.fcoe_pf_params.bdq_pbl_base_addr[0] =
     qedf->bdq_pbl_list_dma;
 qedf->pf_params.fcoe_pf_params.bdq_pbl_num_entries[0] =
     qedf->bdq_pbl_list_num_entries;
 qedf->pf_params.fcoe_pf_params.rq_buffer_size = QEDF_BDQ_BUF_SIZE;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
     "bdq_list=%p bdq_pbl_list_dma=%llx bdq_pbl_list_entries=%d.\n",
     qedf->bdq_pbl_list,
     qedf->pf_params.fcoe_pf_params.bdq_pbl_base_addr[0],
     qedf->pf_params.fcoe_pf_params.bdq_pbl_num_entries[0]);

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
     "cq_num_entries=%d.\n",
     qedf->pf_params.fcoe_pf_params.cq_num_entries);

 return 0;
}
