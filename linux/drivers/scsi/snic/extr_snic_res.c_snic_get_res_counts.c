
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {scalar_t__ wq_count; scalar_t__ cq_count; scalar_t__ intr_count; int vdev; } ;


 int RES_TYPE_CQ ;
 int RES_TYPE_INTR_CTRL ;
 int RES_TYPE_WQ ;
 int SNIC_BUG_ON (int) ;
 void* svnic_dev_get_res_count (int ,int ) ;

void
snic_get_res_counts(struct snic *snic)
{
 snic->wq_count = svnic_dev_get_res_count(snic->vdev, RES_TYPE_WQ);
 SNIC_BUG_ON(snic->wq_count == 0);
 snic->cq_count = svnic_dev_get_res_count(snic->vdev, RES_TYPE_CQ);
 SNIC_BUG_ON(snic->cq_count == 0);
 snic->intr_count = svnic_dev_get_res_count(snic->vdev,
        RES_TYPE_INTR_CTRL);
 SNIC_BUG_ON(snic->intr_count == 0);
}
