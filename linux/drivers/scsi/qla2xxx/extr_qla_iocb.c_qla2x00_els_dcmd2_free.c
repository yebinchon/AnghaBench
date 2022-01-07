
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct els_plogi {int els_resp_pyld_dma; scalar_t__ els_resp_pyld; int rx_size; int els_plogi_pyld_dma; scalar_t__ els_plogi_pyld; int tx_size; } ;
struct TYPE_7__ {TYPE_2__* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

void qla2x00_els_dcmd2_free(scsi_qla_host_t *vha, struct els_plogi *els_plogi)
{
 if (els_plogi->els_plogi_pyld)
  dma_free_coherent(&vha->hw->pdev->dev,
      els_plogi->tx_size,
      els_plogi->els_plogi_pyld,
      els_plogi->els_plogi_pyld_dma);

 if (els_plogi->els_resp_pyld)
  dma_free_coherent(&vha->hw->pdev->dev,
      els_plogi->rx_size,
      els_plogi->els_resp_pyld,
      els_plogi->els_resp_pyld_dma);
}
