
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int stds; int list_node; struct whc* whc; int qset_dma; } ;
struct whc {int qset_pool; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 struct whc_qset* dma_pool_zalloc (int ,int ,int *) ;

struct whc_qset *qset_alloc(struct whc *whc, gfp_t mem_flags)
{
 struct whc_qset *qset;
 dma_addr_t dma;

 qset = dma_pool_zalloc(whc->qset_pool, mem_flags, &dma);
 if (qset == ((void*)0))
  return ((void*)0);

 qset->qset_dma = dma;
 qset->whc = whc;

 INIT_LIST_HEAD(&qset->list_node);
 INIT_LIST_HEAD(&qset->stds);

 return qset;
}
