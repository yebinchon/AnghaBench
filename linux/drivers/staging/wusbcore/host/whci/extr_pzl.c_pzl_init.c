
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct whc {scalar_t__ base; int pz_list_dma; int * pz_list; TYPE_1__* umc; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QH_LINK_NTDS (int) ;
 int QH_LINK_T ;
 scalar_t__ WUSBPERIODICLISTBASE ;
 int cpu_to_le64 (int) ;
 int * dma_alloc_coherent (int *,int,int *,int ) ;
 int le_writeq (int ,scalar_t__) ;

int pzl_init(struct whc *whc)
{
 int i;

 whc->pz_list = dma_alloc_coherent(&whc->umc->dev, sizeof(u64) * 16,
       &whc->pz_list_dma, GFP_KERNEL);
 if (whc->pz_list == ((void*)0))
  return -ENOMEM;


 for (i = 0; i < 16; i++)
  whc->pz_list[i] = cpu_to_le64(QH_LINK_NTDS(8) | QH_LINK_T);

 le_writeq(whc->pz_list_dma, whc->base + WUSBPERIODICLISTBASE);

 return 0;
}
