
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_instance {scalar_t__* host_toggle_bit; scalar_t__* hrrq_start_bus_addr; int ** hrrq_start; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HRRQ_ENTRY_SIZE ;
 int PMCRAID_MAX_CMD ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;

__attribute__((used)) static void
pmcraid_release_host_rrqs(struct pmcraid_instance *pinstance, int maxindex)
{
 int i;

 for (i = 0; i < maxindex; i++) {
  dma_free_coherent(&pinstance->pdev->dev,
        HRRQ_ENTRY_SIZE * PMCRAID_MAX_CMD,
        pinstance->hrrq_start[i],
        pinstance->hrrq_start_bus_addr[i]);


  pinstance->hrrq_start[i] = ((void*)0);
  pinstance->hrrq_start_bus_addr[i] = 0;
  pinstance->host_toggle_bit[i] = 0;
 }
}
