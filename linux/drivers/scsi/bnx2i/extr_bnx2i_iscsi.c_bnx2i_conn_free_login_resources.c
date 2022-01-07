
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2i_hba {TYPE_1__* pcidev; } ;
struct TYPE_4__ {int * req_buf; int req_dma_addr; int * resp_buf; int resp_dma_addr; int * req_bd_tbl; int req_bd_dma; int * resp_bd_tbl; int resp_bd_dma; } ;
struct bnx2i_conn {TYPE_2__ gen_pdu; } ;
struct TYPE_3__ {int dev; } ;


 int CNIC_PAGE_SIZE ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void bnx2i_conn_free_login_resources(struct bnx2i_hba *hba,
         struct bnx2i_conn *bnx2i_conn)
{
 if (bnx2i_conn->gen_pdu.resp_bd_tbl) {
  dma_free_coherent(&hba->pcidev->dev, CNIC_PAGE_SIZE,
      bnx2i_conn->gen_pdu.resp_bd_tbl,
      bnx2i_conn->gen_pdu.resp_bd_dma);
  bnx2i_conn->gen_pdu.resp_bd_tbl = ((void*)0);
 }

 if (bnx2i_conn->gen_pdu.req_bd_tbl) {
  dma_free_coherent(&hba->pcidev->dev, CNIC_PAGE_SIZE,
      bnx2i_conn->gen_pdu.req_bd_tbl,
      bnx2i_conn->gen_pdu.req_bd_dma);
  bnx2i_conn->gen_pdu.req_bd_tbl = ((void*)0);
 }

 if (bnx2i_conn->gen_pdu.resp_buf) {
  dma_free_coherent(&hba->pcidev->dev,
      ISCSI_DEF_MAX_RECV_SEG_LEN,
      bnx2i_conn->gen_pdu.resp_buf,
      bnx2i_conn->gen_pdu.resp_dma_addr);
  bnx2i_conn->gen_pdu.resp_buf = ((void*)0);
 }

 if (bnx2i_conn->gen_pdu.req_buf) {
  dma_free_coherent(&hba->pcidev->dev,
      ISCSI_DEF_MAX_RECV_SEG_LEN,
      bnx2i_conn->gen_pdu.req_buf,
      bnx2i_conn->gen_pdu.req_dma_addr);
  bnx2i_conn->gen_pdu.req_buf = ((void*)0);
 }
}
