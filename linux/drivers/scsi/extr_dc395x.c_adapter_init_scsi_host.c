
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int max_cmd_len; int this_id; int dma_channel; int max_id; int max_lun; int irq; int unique_id; int n_io_port; int io_port; int cmd_per_lun; int can_queue; scalar_t__ hostdata; } ;
struct NvRamType {int scsi_id; int channel_cfg; } ;
struct AdapterCtlBlk {int last_reset; int irq_level; int io_port_base; int io_port_len; struct NvRamType eeprom; } ;


 int DC395x_MAX_CMD_PER_LUN ;
 int DC395x_MAX_CMD_QUEUE ;
 int NAC_SCANLUN ;
 int jiffies ;

__attribute__((used)) static void adapter_init_scsi_host(struct Scsi_Host *host)
{
        struct AdapterCtlBlk *acb = (struct AdapterCtlBlk *)host->hostdata;
 struct NvRamType *eeprom = &acb->eeprom;

 host->max_cmd_len = 24;
 host->can_queue = DC395x_MAX_CMD_QUEUE;
 host->cmd_per_lun = DC395x_MAX_CMD_PER_LUN;
 host->this_id = (int)eeprom->scsi_id;
 host->io_port = acb->io_port_base;
 host->n_io_port = acb->io_port_len;
 host->dma_channel = -1;
 host->unique_id = acb->io_port_base;
 host->irq = acb->irq_level;
 acb->last_reset = jiffies;

 host->max_id = 16;
 if (host->max_id - 1 == eeprom->scsi_id)
  host->max_id--;

 if (eeprom->channel_cfg & NAC_SCANLUN)
  host->max_lun = 8;
 else
  host->max_lun = 1;
}
