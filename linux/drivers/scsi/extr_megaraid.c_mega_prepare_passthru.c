
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct scsi_cmnd {int* cmnd; TYPE_3__* device; int cmd_len; } ;
struct TYPE_16__ {int dma_direction; TYPE_5__* pthru; } ;
typedef TYPE_4__ scb_t ;
struct TYPE_17__ {int timeout; int ars; int reqsenselen; int channel; int target; int dataxferlen; int dataxferaddr; int numsgelements; int cdb; int logdrv; int cdblen; scalar_t__ islogical; } ;
typedef TYPE_5__ mega_passthru ;
struct TYPE_18__ {int flag; TYPE_2__* host; TYPE_1__* dev; } ;
typedef TYPE_6__ adapter_t ;
struct TYPE_15__ {long channel; int lun; } ;
struct TYPE_14__ {int host_no; } ;
struct TYPE_13__ {int dev; } ;


 int BOARD_40LD ;

 int PCI_DMA_BIDIRECTIONAL ;

 int dev_notice (int *,char*,int ,long,int) ;
 int mega_build_sglist (TYPE_6__*,TYPE_4__*,int *,int *) ;
 int memcpy (int ,int*,int ) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static mega_passthru *
mega_prepare_passthru(adapter_t *adapter, scb_t *scb, struct scsi_cmnd *cmd,
        int channel, int target)
{
 mega_passthru *pthru;

 pthru = scb->pthru;
 memset(pthru, 0, sizeof (mega_passthru));


 pthru->timeout = 2;

 pthru->ars = 1;
 pthru->reqsenselen = 14;
 pthru->islogical = 0;

 pthru->channel = (adapter->flag & BOARD_40LD) ? 0 : channel;

 pthru->target = (adapter->flag & BOARD_40LD) ?
  (channel << 4) | target : target;

 pthru->cdblen = cmd->cmd_len;
 pthru->logdrv = cmd->device->lun;

 memcpy(pthru->cdb, cmd->cmnd, cmd->cmd_len);


 scb->dma_direction = PCI_DMA_BIDIRECTIONAL;


 switch (cmd->cmnd[0]) {
 case 129:
 case 128:
  if(!(adapter->flag & (1L << cmd->device->channel))) {

   dev_notice(&adapter->dev->dev,
    "scsi%d: scanning scsi channel %d [P%d] "
    "for physical devices\n",
     adapter->host->host_no,
     cmd->device->channel, channel);

   adapter->flag |= (1L << cmd->device->channel);
  }

 default:
  pthru->numsgelements = mega_build_sglist(adapter, scb,
    &pthru->dataxferaddr, &pthru->dataxferlen);
  break;
 }
 return pthru;
}
