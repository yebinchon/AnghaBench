
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmd_len; unsigned char* cmnd; } ;
typedef int sector_t ;
typedef int blk_status_t ;


 int BLK_STS_OK ;
 unsigned char READ_16 ;
 unsigned char WRITE_16 ;
 int put_unaligned_be32 (unsigned int,unsigned char*) ;
 int put_unaligned_be64 (int ,unsigned char*) ;

__attribute__((used)) static blk_status_t sd_setup_rw16_cmnd(struct scsi_cmnd *cmd, bool write,
           sector_t lba, unsigned int nr_blocks,
           unsigned char flags)
{
 cmd->cmd_len = 16;
 cmd->cmnd[0] = write ? WRITE_16 : READ_16;
 cmd->cmnd[1] = flags;
 cmd->cmnd[14] = 0;
 cmd->cmnd[15] = 0;
 put_unaligned_be64(lba, &cmd->cmnd[2]);
 put_unaligned_be32(nr_blocks, &cmd->cmnd[10]);

 return BLK_STS_OK;
}
