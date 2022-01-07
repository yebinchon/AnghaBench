
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; struct TYPE_10__* q_next; int data_len; int data_busaddr; int scsi_cmd; } ;
typedef TYPE_2__ ips_scb_t ;
struct TYPE_11__ {int max_cmds; TYPE_2__* scb_freelist; TYPE_1__* pcidev; } ;
typedef TYPE_3__ ips_ha_t ;
struct TYPE_9__ {int dev; } ;


 int IPS_COMMAND_ID (TYPE_3__*,TYPE_2__*) ;
 int IPS_DMA_DIR (TYPE_2__*) ;
 int IPS_SCB_MAP_SG ;
 int IPS_SCB_MAP_SINGLE ;
 int METHOD_TRACE (char*,int) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int scsi_dma_unmap (int ) ;

__attribute__((used)) static void
ips_freescb(ips_ha_t * ha, ips_scb_t * scb)
{

 METHOD_TRACE("ips_freescb", 1);
 if (scb->flags & IPS_SCB_MAP_SG)
                scsi_dma_unmap(scb->scsi_cmd);
 else if (scb->flags & IPS_SCB_MAP_SINGLE)
  dma_unmap_single(&ha->pcidev->dev, scb->data_busaddr,
     scb->data_len, IPS_DMA_DIR(scb));


 if (IPS_COMMAND_ID(ha, scb) < (ha->max_cmds - 1)) {
  scb->q_next = ha->scb_freelist;
  ha->scb_freelist = scb;
 }
}
