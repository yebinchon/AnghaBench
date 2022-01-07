
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedi_ctx {TYPE_1__* pdev; } ;
struct TYPE_4__ {int * req_buf; int req_dma_addr; int * resp_buf; int resp_dma_addr; int * req_bd_tbl; int req_bd_dma; int * resp_bd_tbl; int resp_bd_dma; } ;
struct qedi_conn {TYPE_2__ gen_pdu; } ;
struct TYPE_3__ {int dev; } ;


 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int QEDI_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void qedi_conn_free_login_resources(struct qedi_ctx *qedi,
        struct qedi_conn *qedi_conn)
{
 if (qedi_conn->gen_pdu.resp_bd_tbl) {
  dma_free_coherent(&qedi->pdev->dev, QEDI_PAGE_SIZE,
      qedi_conn->gen_pdu.resp_bd_tbl,
      qedi_conn->gen_pdu.resp_bd_dma);
  qedi_conn->gen_pdu.resp_bd_tbl = ((void*)0);
 }

 if (qedi_conn->gen_pdu.req_bd_tbl) {
  dma_free_coherent(&qedi->pdev->dev, QEDI_PAGE_SIZE,
      qedi_conn->gen_pdu.req_bd_tbl,
      qedi_conn->gen_pdu.req_bd_dma);
  qedi_conn->gen_pdu.req_bd_tbl = ((void*)0);
 }

 if (qedi_conn->gen_pdu.resp_buf) {
  dma_free_coherent(&qedi->pdev->dev,
      ISCSI_DEF_MAX_RECV_SEG_LEN,
      qedi_conn->gen_pdu.resp_buf,
      qedi_conn->gen_pdu.resp_dma_addr);
  qedi_conn->gen_pdu.resp_buf = ((void*)0);
 }

 if (qedi_conn->gen_pdu.req_buf) {
  dma_free_coherent(&qedi->pdev->dev,
      ISCSI_DEF_MAX_RECV_SEG_LEN,
      qedi_conn->gen_pdu.req_buf,
      qedi_conn->gen_pdu.req_dma_addr);
  qedi_conn->gen_pdu.req_buf = ((void*)0);
 }
}
