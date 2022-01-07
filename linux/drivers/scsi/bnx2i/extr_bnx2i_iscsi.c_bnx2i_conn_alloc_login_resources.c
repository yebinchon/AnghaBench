
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2i_hba {TYPE_1__* pcidev; } ;
struct TYPE_5__ {int * req_buf; int req_dma_addr; int * resp_buf; int resp_dma_addr; int * req_bd_tbl; int req_bd_dma; int * resp_bd_tbl; int resp_bd_dma; int * resp_wr_ptr; int resp_buf_size; int * req_wr_ptr; scalar_t__ req_buf_size; } ;
struct bnx2i_conn {TYPE_3__* cls_conn; TYPE_2__ gen_pdu; } ;
struct TYPE_6__ {int dd_data; } ;
struct TYPE_4__ {int dev; } ;


 int CNIC_PAGE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int KERN_ERR ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int iscsi_conn_printk (int ,int ,char*) ;

__attribute__((used)) static int bnx2i_conn_alloc_login_resources(struct bnx2i_hba *hba,
         struct bnx2i_conn *bnx2i_conn)
{

 bnx2i_conn->gen_pdu.req_buf =
  dma_alloc_coherent(&hba->pcidev->dev,
       ISCSI_DEF_MAX_RECV_SEG_LEN,
       &bnx2i_conn->gen_pdu.req_dma_addr,
       GFP_KERNEL);
 if (bnx2i_conn->gen_pdu.req_buf == ((void*)0))
  goto login_req_buf_failure;

 bnx2i_conn->gen_pdu.req_buf_size = 0;
 bnx2i_conn->gen_pdu.req_wr_ptr = bnx2i_conn->gen_pdu.req_buf;

 bnx2i_conn->gen_pdu.resp_buf =
  dma_alloc_coherent(&hba->pcidev->dev,
       ISCSI_DEF_MAX_RECV_SEG_LEN,
       &bnx2i_conn->gen_pdu.resp_dma_addr,
       GFP_KERNEL);
 if (bnx2i_conn->gen_pdu.resp_buf == ((void*)0))
  goto login_resp_buf_failure;

 bnx2i_conn->gen_pdu.resp_buf_size = ISCSI_DEF_MAX_RECV_SEG_LEN;
 bnx2i_conn->gen_pdu.resp_wr_ptr = bnx2i_conn->gen_pdu.resp_buf;

 bnx2i_conn->gen_pdu.req_bd_tbl =
  dma_alloc_coherent(&hba->pcidev->dev, CNIC_PAGE_SIZE,
       &bnx2i_conn->gen_pdu.req_bd_dma, GFP_KERNEL);
 if (bnx2i_conn->gen_pdu.req_bd_tbl == ((void*)0))
  goto login_req_bd_tbl_failure;

 bnx2i_conn->gen_pdu.resp_bd_tbl =
  dma_alloc_coherent(&hba->pcidev->dev, CNIC_PAGE_SIZE,
       &bnx2i_conn->gen_pdu.resp_bd_dma,
       GFP_KERNEL);
 if (bnx2i_conn->gen_pdu.resp_bd_tbl == ((void*)0))
  goto login_resp_bd_tbl_failure;

 return 0;

login_resp_bd_tbl_failure:
 dma_free_coherent(&hba->pcidev->dev, CNIC_PAGE_SIZE,
     bnx2i_conn->gen_pdu.req_bd_tbl,
     bnx2i_conn->gen_pdu.req_bd_dma);
 bnx2i_conn->gen_pdu.req_bd_tbl = ((void*)0);

login_req_bd_tbl_failure:
 dma_free_coherent(&hba->pcidev->dev, ISCSI_DEF_MAX_RECV_SEG_LEN,
     bnx2i_conn->gen_pdu.resp_buf,
     bnx2i_conn->gen_pdu.resp_dma_addr);
 bnx2i_conn->gen_pdu.resp_buf = ((void*)0);
login_resp_buf_failure:
 dma_free_coherent(&hba->pcidev->dev, ISCSI_DEF_MAX_RECV_SEG_LEN,
     bnx2i_conn->gen_pdu.req_buf,
     bnx2i_conn->gen_pdu.req_dma_addr);
 bnx2i_conn->gen_pdu.req_buf = ((void*)0);
login_req_buf_failure:
 iscsi_conn_printk(KERN_ERR, bnx2i_conn->cls_conn->dd_data,
     "login resource alloc failed!!\n");
 return -ENOMEM;

}
