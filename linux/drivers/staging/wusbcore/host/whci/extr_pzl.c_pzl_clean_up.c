
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct whc {int pz_list_dma; scalar_t__ pz_list; TYPE_1__* umc; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,scalar_t__,int ) ;

void pzl_clean_up(struct whc *whc)
{
 if (whc->pz_list)
  dma_free_coherent(&whc->umc->dev, sizeof(u64) * 16, whc->pz_list,
      whc->pz_list_dma);
}
