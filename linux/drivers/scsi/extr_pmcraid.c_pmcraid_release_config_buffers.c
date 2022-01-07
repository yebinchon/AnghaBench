
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmcraid_instance {scalar_t__ cfg_table_bus_addr; TYPE_2__* res_entries; int * cfg_table; TYPE_1__* pdev; } ;
struct pmcraid_config_table {int dummy; } ;
struct TYPE_4__ {int queue; } ;
struct TYPE_3__ {int dev; } ;


 int PMCRAID_MAX_RESOURCES ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 int kfree (TYPE_2__*) ;
 int list_del (int *) ;
 int pmcraid_release_hcams (struct pmcraid_instance*) ;

__attribute__((used)) static void pmcraid_release_config_buffers(struct pmcraid_instance *pinstance)
{
 if (pinstance->cfg_table != ((void*)0) &&
     pinstance->cfg_table_bus_addr != 0) {
  dma_free_coherent(&pinstance->pdev->dev,
        sizeof(struct pmcraid_config_table),
        pinstance->cfg_table,
        pinstance->cfg_table_bus_addr);
  pinstance->cfg_table = ((void*)0);
  pinstance->cfg_table_bus_addr = 0;
 }

 if (pinstance->res_entries != ((void*)0)) {
  int i;

  for (i = 0; i < PMCRAID_MAX_RESOURCES; i++)
   list_del(&pinstance->res_entries[i].queue);
  kfree(pinstance->res_entries);
  pinstance->res_entries = ((void*)0);
 }

 pmcraid_release_hcams(pinstance);
}
