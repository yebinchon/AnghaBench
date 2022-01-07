
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opqual; unsigned int ev_seq; int addr; int optype; int opcode; int id; } ;
union myrb_cmd_mbox {TYPE_1__ type3E; } ;
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; size_t ascq; } ;
struct myrb_log_entry {unsigned int seq_num; int target; int channel; int sense; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;
struct myrb_hba {TYPE_2__* pdev; int host; struct myrb_cmdblk mcmd_blk; } ;
typedef int sshdr ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 size_t ARRAY_SIZE (int *) ;
 int DAC960_V1_GetEventLogEntry ;
 int GFP_KERNEL ;
 int KERN_CRIT ;
 int KERN_INFO ;
 int MYRB_CMD_EVENT_LOG_OPERATION ;
 int MYRB_MCMD_TAG ;
 unsigned short MYRB_STATUS_SUCCESS ;
 scalar_t__ VENDOR_SPECIFIC ;
 struct myrb_log_entry* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct myrb_log_entry*,int ) ;
 int memset (struct scsi_sense_hdr*,int ,int) ;
 int * myrb_event_msg ;
 unsigned short myrb_exec_cmd (struct myrb_hba*,struct myrb_cmdblk*) ;
 int myrb_reset_cmd (struct myrb_cmdblk*) ;
 int scsi_normalize_sense (int ,int,struct scsi_sense_hdr*) ;
 int shost_printk (int ,int ,char*,unsigned int,unsigned short,...) ;

__attribute__((used)) static void myrb_get_event(struct myrb_hba *cb, unsigned int event)
{
 struct myrb_cmdblk *cmd_blk = &cb->mcmd_blk;
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;
 struct myrb_log_entry *ev_buf;
 dma_addr_t ev_addr;
 unsigned short status;

 ev_buf = dma_alloc_coherent(&cb->pdev->dev,
        sizeof(struct myrb_log_entry),
        &ev_addr, GFP_KERNEL);
 if (!ev_buf)
  return;

 myrb_reset_cmd(cmd_blk);
 mbox->type3E.id = MYRB_MCMD_TAG;
 mbox->type3E.opcode = MYRB_CMD_EVENT_LOG_OPERATION;
 mbox->type3E.optype = DAC960_V1_GetEventLogEntry;
 mbox->type3E.opqual = 1;
 mbox->type3E.ev_seq = event;
 mbox->type3E.addr = ev_addr;
 status = myrb_exec_cmd(cb, cmd_blk);
 if (status != MYRB_STATUS_SUCCESS)
  shost_printk(KERN_INFO, cb->host,
        "Failed to get event log %d, status %04x\n",
        event, status);

 else if (ev_buf->seq_num == event) {
  struct scsi_sense_hdr sshdr;

  memset(&sshdr, 0, sizeof(sshdr));
  scsi_normalize_sense(ev_buf->sense, 32, &sshdr);

  if (sshdr.sense_key == VENDOR_SPECIFIC &&
      sshdr.asc == 0x80 &&
      sshdr.ascq < ARRAY_SIZE(myrb_event_msg))
   shost_printk(KERN_CRIT, cb->host,
         "Physical drive %d:%d: %s\n",
         ev_buf->channel, ev_buf->target,
         myrb_event_msg[sshdr.ascq]);
  else
   shost_printk(KERN_CRIT, cb->host,
         "Physical drive %d:%d: Sense: %X/%02X/%02X\n",
         ev_buf->channel, ev_buf->target,
         sshdr.sense_key, sshdr.asc, sshdr.ascq);
 }

 dma_free_coherent(&cb->pdev->dev, sizeof(struct myrb_log_entry),
     ev_buf, ev_addr);
}
