
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int host_no; } ;
struct scsi_lun {int dummy; } ;
struct ddb_entry {scalar_t__ fw_ddb_index; } ;
typedef int mbox_sts ;
typedef int mbox_cmd ;


 int DEBUG2 (int ) ;
 scalar_t__ MBOX_CMD_LUN_RESET ;
 int MBOX_REG_COUNT ;
 scalar_t__ MBOX_STS_COMMAND_COMPLETE ;
 scalar_t__ MBOX_STS_COMMAND_ERROR ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ cpu_to_le32 (scalar_t__) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memset (scalar_t__**,int ,int) ;
 int printk (char*,int ,scalar_t__,int ) ;
 int qla4xxx_mailbox_command (struct scsi_qla_host*,int,int,scalar_t__*,scalar_t__*) ;

int qla4xxx_reset_lun(struct scsi_qla_host * ha, struct ddb_entry * ddb_entry,
        uint64_t lun)
{
 uint32_t mbox_cmd[MBOX_REG_COUNT];
 uint32_t mbox_sts[MBOX_REG_COUNT];
 uint32_t scsi_lun[2];
 int status = QLA_SUCCESS;

 DEBUG2(printk("scsi%ld:%d:%llu: lun reset issued\n", ha->host_no,
        ddb_entry->fw_ddb_index, lun));





 memset(&mbox_cmd, 0, sizeof(mbox_cmd));
 memset(&mbox_sts, 0, sizeof(mbox_sts));
 int_to_scsilun(lun, (struct scsi_lun *) scsi_lun);

 mbox_cmd[0] = MBOX_CMD_LUN_RESET;
 mbox_cmd[1] = ddb_entry->fw_ddb_index;


 mbox_cmd[2] = cpu_to_le32(scsi_lun[0]);


 mbox_cmd[3] = cpu_to_le32(scsi_lun[1]);
 mbox_cmd[5] = 0x01;

 qla4xxx_mailbox_command(ha, MBOX_REG_COUNT, 1, &mbox_cmd[0], &mbox_sts[0]);
 if (mbox_sts[0] != MBOX_STS_COMMAND_COMPLETE &&
     mbox_sts[0] != MBOX_STS_COMMAND_ERROR)
  status = QLA_ERROR;

 return status;
}
