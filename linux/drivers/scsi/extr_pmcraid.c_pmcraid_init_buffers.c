
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_timestamp_data {int dummy; } ;
struct pmcraid_instance {int free_cmd_pool; struct pmcraid_cmd** cmd_list; int * timestamp_data; int timestamp_data_baddr; TYPE_1__* pdev; int * inq_data; int inq_data_baddr; int num_hrrq; } ;
struct pmcraid_inquiry_data {int dummy; } ;
struct pmcraid_cmd {int free_list; struct pmcraid_instance* drv_inst; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMCRAID_MAX_CMD ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ pmcraid_allocate_cmd_blocks (struct pmcraid_instance*) ;
 scalar_t__ pmcraid_allocate_config_buffers (struct pmcraid_instance*) ;
 scalar_t__ pmcraid_allocate_control_blocks (struct pmcraid_instance*) ;
 scalar_t__ pmcraid_allocate_host_rrqs (struct pmcraid_instance*) ;
 int pmcraid_err (char*,...) ;
 int pmcraid_init_cmdblk (struct pmcraid_cmd*,int) ;
 int pmcraid_release_buffers (struct pmcraid_instance*) ;
 int pmcraid_release_cmd_blocks (struct pmcraid_instance*,int) ;
 int pmcraid_release_config_buffers (struct pmcraid_instance*) ;
 int pmcraid_release_host_rrqs (struct pmcraid_instance*,int ) ;

__attribute__((used)) static int pmcraid_init_buffers(struct pmcraid_instance *pinstance)
{
 int i;

 if (pmcraid_allocate_host_rrqs(pinstance)) {
  pmcraid_err("couldn't allocate memory for %d host rrqs\n",
        pinstance->num_hrrq);
  return -ENOMEM;
 }

 if (pmcraid_allocate_config_buffers(pinstance)) {
  pmcraid_err("couldn't allocate memory for config buffers\n");
  pmcraid_release_host_rrqs(pinstance, pinstance->num_hrrq);
  return -ENOMEM;
 }

 if (pmcraid_allocate_cmd_blocks(pinstance)) {
  pmcraid_err("couldn't allocate memory for cmd blocks\n");
  pmcraid_release_config_buffers(pinstance);
  pmcraid_release_host_rrqs(pinstance, pinstance->num_hrrq);
  return -ENOMEM;
 }

 if (pmcraid_allocate_control_blocks(pinstance)) {
  pmcraid_err("couldn't allocate memory control blocks\n");
  pmcraid_release_config_buffers(pinstance);
  pmcraid_release_cmd_blocks(pinstance, PMCRAID_MAX_CMD);
  pmcraid_release_host_rrqs(pinstance, pinstance->num_hrrq);
  return -ENOMEM;
 }


 pinstance->inq_data = dma_alloc_coherent(&pinstance->pdev->dev,
     sizeof(struct pmcraid_inquiry_data),
     &pinstance->inq_data_baddr, GFP_KERNEL);
 if (pinstance->inq_data == ((void*)0)) {
  pmcraid_err("couldn't allocate DMA memory for INQUIRY\n");
  pmcraid_release_buffers(pinstance);
  return -ENOMEM;
 }


 pinstance->timestamp_data = dma_alloc_coherent(&pinstance->pdev->dev,
     sizeof(struct pmcraid_timestamp_data),
     &pinstance->timestamp_data_baddr,
     GFP_KERNEL);
 if (pinstance->timestamp_data == ((void*)0)) {
  pmcraid_err("couldn't allocate DMA memory for 				set time_stamp \n");

  pmcraid_release_buffers(pinstance);
  return -ENOMEM;
 }






 for (i = 0; i < PMCRAID_MAX_CMD; i++) {
  struct pmcraid_cmd *cmdp = pinstance->cmd_list[i];
  pmcraid_init_cmdblk(cmdp, i);
  cmdp->drv_inst = pinstance;
  list_add_tail(&cmdp->free_list, &pinstance->free_cmd_pool);
 }

 return 0;
}
