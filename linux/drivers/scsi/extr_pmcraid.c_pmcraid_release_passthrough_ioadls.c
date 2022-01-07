
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmcraid_sglist {int num_sg; int scatterlist; } ;
struct pmcraid_cmd {struct pmcraid_sglist* sglist; TYPE_2__* drv_inst; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dma_unmap_sg (int *,int ,int ,int) ;
 int pmcraid_free_sglist (struct pmcraid_sglist*) ;

__attribute__((used)) static void pmcraid_release_passthrough_ioadls(
 struct pmcraid_cmd *cmd,
 int buflen,
 int direction
)
{
 struct pmcraid_sglist *sglist = cmd->sglist;

 if (buflen > 0) {
  dma_unmap_sg(&cmd->drv_inst->pdev->dev,
        sglist->scatterlist,
        sglist->num_sg,
        direction);
  pmcraid_free_sglist(sglist);
  cmd->sglist = ((void*)0);
 }
}
