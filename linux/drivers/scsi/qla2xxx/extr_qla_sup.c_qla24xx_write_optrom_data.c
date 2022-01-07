
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int host; struct qla_hw_data* hw; } ;
struct qla_hw_data {int mbx_cmd_flags; } ;


 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 int MBX_UPDATE_FLASH_ACTIVE ;
 int clear_bit (int ,int *) ;
 int qla24xx_write_flash_data (struct scsi_qla_host*,int*,int,int) ;
 int qla28xx_write_flash_data (struct scsi_qla_host*,int*,int,int) ;
 int scsi_block_requests (int ) ;
 int scsi_unblock_requests (int ) ;
 int set_bit (int ,int *) ;

int
qla24xx_write_optrom_data(struct scsi_qla_host *vha, void *buf,
    uint32_t offset, uint32_t length)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;


 scsi_block_requests(vha->host);
 set_bit(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);


 if (IS_QLA28XX(ha))
  rval = qla28xx_write_flash_data(vha, (uint32_t *)buf,
      offset >> 2, length >> 2);
 else
  rval = qla24xx_write_flash_data(vha, (uint32_t *)buf,
      offset >> 2, length >> 2);

 clear_bit(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);
 scsi_unblock_requests(vha->host);

 return rval;
}
