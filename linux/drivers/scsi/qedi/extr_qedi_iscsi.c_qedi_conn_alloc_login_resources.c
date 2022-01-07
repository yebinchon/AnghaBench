
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qedi_ctx {TYPE_1__* pdev; int dbg_ctx; } ;
struct TYPE_5__ {int * req_buf; int req_dma_addr; int * resp_buf; int resp_dma_addr; int * req_bd_tbl; int req_bd_dma; void* resp_bd_tbl; int resp_bd_dma; int * resp_wr_ptr; int resp_buf_size; int * req_wr_ptr; scalar_t__ req_buf_size; } ;
struct qedi_conn {TYPE_3__* cls_conn; TYPE_2__ gen_pdu; int iscsi_conn_id; } ;
struct TYPE_6__ {int dd_data; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int KERN_ERR ;
 int QEDI_INFO (int *,int ,char*,int ) ;
 int QEDI_LOG_SESS ;
 int QEDI_PAGE_SIZE ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int iscsi_conn_printk (int ,int ,char*) ;

__attribute__((used)) static int qedi_conn_alloc_login_resources(struct qedi_ctx *qedi,
        struct qedi_conn *qedi_conn)
{
 qedi_conn->gen_pdu.req_buf =
  dma_alloc_coherent(&qedi->pdev->dev,
       ISCSI_DEF_MAX_RECV_SEG_LEN,
       &qedi_conn->gen_pdu.req_dma_addr,
       GFP_KERNEL);
 if (!qedi_conn->gen_pdu.req_buf)
  goto login_req_buf_failure;

 qedi_conn->gen_pdu.req_buf_size = 0;
 qedi_conn->gen_pdu.req_wr_ptr = qedi_conn->gen_pdu.req_buf;

 qedi_conn->gen_pdu.resp_buf =
  dma_alloc_coherent(&qedi->pdev->dev,
       ISCSI_DEF_MAX_RECV_SEG_LEN,
       &qedi_conn->gen_pdu.resp_dma_addr,
       GFP_KERNEL);
 if (!qedi_conn->gen_pdu.resp_buf)
  goto login_resp_buf_failure;

 qedi_conn->gen_pdu.resp_buf_size = ISCSI_DEF_MAX_RECV_SEG_LEN;
 qedi_conn->gen_pdu.resp_wr_ptr = qedi_conn->gen_pdu.resp_buf;

 qedi_conn->gen_pdu.req_bd_tbl =
  dma_alloc_coherent(&qedi->pdev->dev, QEDI_PAGE_SIZE,
       &qedi_conn->gen_pdu.req_bd_dma, GFP_KERNEL);
 if (!qedi_conn->gen_pdu.req_bd_tbl)
  goto login_req_bd_tbl_failure;

 qedi_conn->gen_pdu.resp_bd_tbl =
  dma_alloc_coherent(&qedi->pdev->dev, QEDI_PAGE_SIZE,
       &qedi_conn->gen_pdu.resp_bd_dma,
       GFP_KERNEL);
 if (!qedi_conn->gen_pdu.resp_bd_tbl)
  goto login_resp_bd_tbl_failure;

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_SESS,
    "Allocation successful, cid=0x%x\n",
    qedi_conn->iscsi_conn_id);
 return 0;

login_resp_bd_tbl_failure:
 dma_free_coherent(&qedi->pdev->dev, QEDI_PAGE_SIZE,
     qedi_conn->gen_pdu.req_bd_tbl,
     qedi_conn->gen_pdu.req_bd_dma);
 qedi_conn->gen_pdu.req_bd_tbl = ((void*)0);

login_req_bd_tbl_failure:
 dma_free_coherent(&qedi->pdev->dev, ISCSI_DEF_MAX_RECV_SEG_LEN,
     qedi_conn->gen_pdu.resp_buf,
     qedi_conn->gen_pdu.resp_dma_addr);
 qedi_conn->gen_pdu.resp_buf = ((void*)0);
login_resp_buf_failure:
 dma_free_coherent(&qedi->pdev->dev, ISCSI_DEF_MAX_RECV_SEG_LEN,
     qedi_conn->gen_pdu.req_buf,
     qedi_conn->gen_pdu.req_dma_addr);
 qedi_conn->gen_pdu.req_buf = ((void*)0);
login_req_buf_failure:
 iscsi_conn_printk(KERN_ERR, qedi_conn->cls_conn->dd_data,
     "login resource alloc failed!!\n");
 return -ENOMEM;
}
