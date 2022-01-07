
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int * ipr_cmd_pool; int ** ipr_cmnd_list_dma; int ** ipr_cmnd_list; } ;


 int IPR_NUM_CMD_BLKS ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,int *,int *) ;
 int kfree (int **) ;

__attribute__((used)) static void ipr_free_cmd_blks(struct ipr_ioa_cfg *ioa_cfg)
{
 int i;

 if (ioa_cfg->ipr_cmnd_list) {
  for (i = 0; i < IPR_NUM_CMD_BLKS; i++) {
   if (ioa_cfg->ipr_cmnd_list[i])
    dma_pool_free(ioa_cfg->ipr_cmd_pool,
           ioa_cfg->ipr_cmnd_list[i],
           ioa_cfg->ipr_cmnd_list_dma[i]);

   ioa_cfg->ipr_cmnd_list[i] = ((void*)0);
  }
 }

 if (ioa_cfg->ipr_cmd_pool)
  dma_pool_destroy(ioa_cfg->ipr_cmd_pool);

 kfree(ioa_cfg->ipr_cmnd_list);
 kfree(ioa_cfg->ipr_cmnd_list_dma);
 ioa_cfg->ipr_cmnd_list = ((void*)0);
 ioa_cfg->ipr_cmnd_list_dma = ((void*)0);
 ioa_cfg->ipr_cmd_pool = ((void*)0);
}
