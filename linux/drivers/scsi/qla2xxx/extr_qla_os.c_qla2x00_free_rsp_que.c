
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsp_que {int length_fx00; int length; int dma; scalar_t__ ring; int dma_fx00; scalar_t__ ring_fx00; } ;
struct qla_hw_data {TYPE_1__* pdev; } ;
typedef int response_t ;
typedef int request_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (struct rsp_que*) ;

__attribute__((used)) static void qla2x00_free_rsp_que(struct qla_hw_data *ha, struct rsp_que *rsp)
{
 if (IS_QLAFX00(ha)) {
  if (rsp && rsp->ring_fx00)
   dma_free_coherent(&ha->pdev->dev,
       (rsp->length_fx00 + 1) * sizeof(request_t),
       rsp->ring_fx00, rsp->dma_fx00);
 } else if (rsp && rsp->ring) {
  dma_free_coherent(&ha->pdev->dev,
  (rsp->length + 1) * sizeof(response_t),
  rsp->ring, rsp->dma);
 }
 kfree(rsp);
}
