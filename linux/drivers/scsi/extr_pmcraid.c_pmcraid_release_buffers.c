
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_timestamp_data {int dummy; } ;
struct pmcraid_instance {scalar_t__ timestamp_data_baddr; int * timestamp_data; TYPE_1__* pdev; scalar_t__ inq_data_baddr; int * inq_data; int num_hrrq; } ;
struct pmcraid_inquiry_data {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int PMCRAID_MAX_CMD ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 int pmcraid_release_cmd_blocks (struct pmcraid_instance*,int ) ;
 int pmcraid_release_config_buffers (struct pmcraid_instance*) ;
 int pmcraid_release_control_blocks (struct pmcraid_instance*,int ) ;
 int pmcraid_release_host_rrqs (struct pmcraid_instance*,int ) ;

__attribute__((used)) static void pmcraid_release_buffers(struct pmcraid_instance *pinstance)
{
 pmcraid_release_config_buffers(pinstance);
 pmcraid_release_control_blocks(pinstance, PMCRAID_MAX_CMD);
 pmcraid_release_cmd_blocks(pinstance, PMCRAID_MAX_CMD);
 pmcraid_release_host_rrqs(pinstance, pinstance->num_hrrq);

 if (pinstance->inq_data != ((void*)0)) {
  dma_free_coherent(&pinstance->pdev->dev,
        sizeof(struct pmcraid_inquiry_data),
        pinstance->inq_data,
        pinstance->inq_data_baddr);

  pinstance->inq_data = ((void*)0);
  pinstance->inq_data_baddr = 0;
 }

 if (pinstance->timestamp_data != ((void*)0)) {
  dma_free_coherent(&pinstance->pdev->dev,
        sizeof(struct pmcraid_timestamp_data),
        pinstance->timestamp_data,
        pinstance->timestamp_data_baddr);

  pinstance->timestamp_data = ((void*)0);
  pinstance->timestamp_data_baddr = 0;
 }
}
