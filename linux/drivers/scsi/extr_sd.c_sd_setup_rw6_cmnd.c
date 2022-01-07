
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmd_len; int* cmnd; } ;
typedef int sector_t ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int KERN_ERR ;
 int READ_6 ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WRITE_6 ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 scalar_t__ unlikely (unsigned char) ;

__attribute__((used)) static blk_status_t sd_setup_rw6_cmnd(struct scsi_cmnd *cmd, bool write,
          sector_t lba, unsigned int nr_blocks,
          unsigned char flags)
{

 if (WARN_ON_ONCE(nr_blocks == 0))
  return BLK_STS_IOERR;

 if (unlikely(flags & 0x8)) {





  scmd_printk(KERN_ERR, cmd, "FUA write on READ/WRITE(6) drive\n");
  return BLK_STS_IOERR;
 }

 cmd->cmd_len = 6;
 cmd->cmnd[0] = write ? WRITE_6 : READ_6;
 cmd->cmnd[1] = (lba >> 16) & 0x1f;
 cmd->cmnd[2] = (lba >> 8) & 0xff;
 cmd->cmnd[3] = lba & 0xff;
 cmd->cmnd[4] = nr_blocks;
 cmd->cmnd[5] = 0;

 return BLK_STS_OK;
}
