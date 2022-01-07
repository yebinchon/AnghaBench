
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atio_q_length; int * tgt_vp_map; scalar_t__ atio_dma; int * atio_ring; } ;
struct qla_hw_data {TYPE_1__ tgt; TYPE_2__* pdev; } ;
struct atio_from_isp {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int QLA_TGT_MODE_ENABLED () ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 int kfree (int *) ;

void
qlt_mem_free(struct qla_hw_data *ha)
{
 if (!QLA_TGT_MODE_ENABLED())
  return;

 if (ha->tgt.atio_ring) {
  dma_free_coherent(&ha->pdev->dev, (ha->tgt.atio_q_length + 1) *
      sizeof(struct atio_from_isp), ha->tgt.atio_ring,
      ha->tgt.atio_dma);
 }
 ha->tgt.atio_ring = ((void*)0);
 ha->tgt.atio_dma = 0;
 kfree(ha->tgt.tgt_vp_map);
 ha->tgt.tgt_vp_map = ((void*)0);
}
