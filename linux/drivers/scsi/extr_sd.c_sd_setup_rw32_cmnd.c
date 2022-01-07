
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; int cmd_len; } ;
typedef unsigned int sector_t ;
typedef int blk_status_t ;


 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int GFP_ATOMIC ;
 int READ_32 ;
 int SD_EXT_CDB_SIZE ;
 int VARIABLE_LENGTH_CMD ;
 int WRITE_32 ;
 int* mempool_alloc (int ,int ) ;
 int memset (int*,int ,int ) ;
 int put_unaligned_be32 (unsigned int,unsigned char*) ;
 int put_unaligned_be64 (unsigned int,unsigned char*) ;
 int sd_cdb_pool ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static blk_status_t sd_setup_rw32_cmnd(struct scsi_cmnd *cmd, bool write,
           sector_t lba, unsigned int nr_blocks,
           unsigned char flags)
{
 cmd->cmnd = mempool_alloc(sd_cdb_pool, GFP_ATOMIC);
 if (unlikely(cmd->cmnd == ((void*)0)))
  return BLK_STS_RESOURCE;

 cmd->cmd_len = SD_EXT_CDB_SIZE;
 memset(cmd->cmnd, 0, cmd->cmd_len);

 cmd->cmnd[0] = VARIABLE_LENGTH_CMD;
 cmd->cmnd[7] = 0x18;
 cmd->cmnd[9] = write ? WRITE_32 : READ_32;
 cmd->cmnd[10] = flags;
 put_unaligned_be64(lba, &cmd->cmnd[12]);
 put_unaligned_be32(lba, &cmd->cmnd[20]);
 put_unaligned_be32(nr_blocks, &cmd->cmnd[28]);

 return BLK_STS_OK;
}
