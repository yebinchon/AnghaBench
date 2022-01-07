
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* region; } ;
struct pm8001_hba_info {struct pm8001_hba_info* tags; TYPE_3__ memoryMap; TYPE_1__* pdev; } ;
struct TYPE_8__ {int (* chip_iounmap ) (struct pm8001_hba_info*) ;} ;
struct TYPE_6__ {int phys_addr; int * virt_ptr; scalar_t__ alignment; scalar_t__ total_len; } ;
struct TYPE_5__ {int dev; } ;


 TYPE_4__* PM8001_CHIP_DISP ;
 int USI_MAX_MEMCNT ;
 int dma_free_coherent (int *,scalar_t__,int *,int ) ;
 int flush_workqueue (int ) ;
 int kfree (struct pm8001_hba_info*) ;
 int pm8001_wq ;
 int stub1 (struct pm8001_hba_info*) ;

__attribute__((used)) static void pm8001_free(struct pm8001_hba_info *pm8001_ha)
{
 int i;

 if (!pm8001_ha)
  return;

 for (i = 0; i < USI_MAX_MEMCNT; i++) {
  if (pm8001_ha->memoryMap.region[i].virt_ptr != ((void*)0)) {
   dma_free_coherent(&pm8001_ha->pdev->dev,
    (pm8001_ha->memoryMap.region[i].total_len +
    pm8001_ha->memoryMap.region[i].alignment),
    pm8001_ha->memoryMap.region[i].virt_ptr,
    pm8001_ha->memoryMap.region[i].phys_addr);
   }
 }
 PM8001_CHIP_DISP->chip_iounmap(pm8001_ha);
 flush_workqueue(pm8001_wq);
 kfree(pm8001_ha->tags);
 kfree(pm8001_ha);
}
