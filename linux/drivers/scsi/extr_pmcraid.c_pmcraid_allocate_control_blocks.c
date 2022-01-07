
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmcraid_instance {TYPE_3__** cmd_list; int control_pool; TYPE_2__* pdev; int ctl_pool_name; TYPE_1__* host; } ;
struct pmcraid_control_block {int dummy; } ;
struct TYPE_6__ {int ioa_cb; int ioa_cb_bus_addr; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int unique_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMCRAID_IOARCB_ALIGNMENT ;
 int PMCRAID_MAX_CMD ;
 int dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_create (int ,int *,int,int ,int ) ;
 int memset (int ,int ,int) ;
 int pmcraid_release_control_blocks (struct pmcraid_instance*,int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int pmcraid_allocate_control_blocks(struct pmcraid_instance *pinstance)
{
 int i;

 sprintf(pinstance->ctl_pool_name, "pmcraid_control_pool_%d",
  pinstance->host->unique_id);

 pinstance->control_pool =
  dma_pool_create(pinstance->ctl_pool_name,
    &pinstance->pdev->dev,
    sizeof(struct pmcraid_control_block),
    PMCRAID_IOARCB_ALIGNMENT, 0);

 if (!pinstance->control_pool)
  return -ENOMEM;

 for (i = 0; i < PMCRAID_MAX_CMD; i++) {
  pinstance->cmd_list[i]->ioa_cb =
   dma_pool_alloc(
    pinstance->control_pool,
    GFP_KERNEL,
    &(pinstance->cmd_list[i]->ioa_cb_bus_addr));

  if (!pinstance->cmd_list[i]->ioa_cb) {
   pmcraid_release_control_blocks(pinstance, i);
   return -ENOMEM;
  }
  memset(pinstance->cmd_list[i]->ioa_cb, 0,
   sizeof(struct pmcraid_control_block));
 }
 return 0;
}
