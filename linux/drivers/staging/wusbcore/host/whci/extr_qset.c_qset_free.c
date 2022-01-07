
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int qset_dma; } ;
struct whc {int qset_pool; } ;


 int dma_pool_free (int ,struct whc_qset*,int ) ;

void qset_free(struct whc *whc, struct whc_qset *qset)
{
 dma_pool_free(whc->qset_pool, qset, qset->qset_dma);
}
