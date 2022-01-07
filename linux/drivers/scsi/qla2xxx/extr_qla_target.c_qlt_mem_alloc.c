
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qla_tgt_vp_map {int dummy; } ;
struct TYPE_4__ {int atio_q_length; int tgt_vp_map; int atio_ring; int atio_dma; } ;
struct qla_hw_data {TYPE_2__ tgt; TYPE_1__* pdev; } ;
struct atio_from_isp {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_MULTI_ID_FABRIC ;
 int QLA_TGT_MODE_ENABLED () ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;

int
qlt_mem_alloc(struct qla_hw_data *ha)
{
 if (!QLA_TGT_MODE_ENABLED())
  return 0;

 ha->tgt.tgt_vp_map = kcalloc(MAX_MULTI_ID_FABRIC,
         sizeof(struct qla_tgt_vp_map),
         GFP_KERNEL);
 if (!ha->tgt.tgt_vp_map)
  return -ENOMEM;

 ha->tgt.atio_ring = dma_alloc_coherent(&ha->pdev->dev,
     (ha->tgt.atio_q_length + 1) * sizeof(struct atio_from_isp),
     &ha->tgt.atio_dma, GFP_KERNEL);
 if (!ha->tgt.atio_ring) {
  kfree(ha->tgt.tgt_vp_map);
  return -ENOMEM;
 }
 return 0;
}
