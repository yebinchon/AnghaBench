
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ipr_misc_cbs {int dummy; } ;
struct TYPE_5__ {int cfg_table; } ;
struct ipr_ioa_cfg {int hrrq_num; int cfg_table_size; int trace; int * hostrcb_dma; int * hostrcb; TYPE_3__* pdev; int cfg_table_dma; TYPE_2__ u; TYPE_1__* hrrq; int vpd_cbs_dma; int vpd_cbs; int res_entries; } ;
struct ipr_hostrcb {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int size; int host_rrq_dma; int host_rrq; } ;


 int IPR_MAX_HCAMS ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int ipr_free_cmd_blks (struct ipr_ioa_cfg*) ;
 int ipr_free_dump (struct ipr_ioa_cfg*) ;
 int kfree (int ) ;

__attribute__((used)) static void ipr_free_mem(struct ipr_ioa_cfg *ioa_cfg)
{
 int i;

 kfree(ioa_cfg->res_entries);
 dma_free_coherent(&ioa_cfg->pdev->dev, sizeof(struct ipr_misc_cbs),
     ioa_cfg->vpd_cbs, ioa_cfg->vpd_cbs_dma);
 ipr_free_cmd_blks(ioa_cfg);

 for (i = 0; i < ioa_cfg->hrrq_num; i++)
  dma_free_coherent(&ioa_cfg->pdev->dev,
      sizeof(u32) * ioa_cfg->hrrq[i].size,
      ioa_cfg->hrrq[i].host_rrq,
      ioa_cfg->hrrq[i].host_rrq_dma);

 dma_free_coherent(&ioa_cfg->pdev->dev, ioa_cfg->cfg_table_size,
     ioa_cfg->u.cfg_table, ioa_cfg->cfg_table_dma);

 for (i = 0; i < IPR_MAX_HCAMS; i++) {
  dma_free_coherent(&ioa_cfg->pdev->dev,
      sizeof(struct ipr_hostrcb),
      ioa_cfg->hostrcb[i],
      ioa_cfg->hostrcb_dma[i]);
 }

 ipr_free_dump(ioa_cfg);
 kfree(ioa_cfg->trace);
}
