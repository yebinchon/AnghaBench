
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int host; } ;


 int qla82xx_read_flash_data (struct scsi_qla_host*,int *,int ,int ) ;
 int scsi_block_requests (int ) ;
 int scsi_unblock_requests (int ) ;

void *
qla82xx_read_optrom_data(struct scsi_qla_host *vha, void *buf,
 uint32_t offset, uint32_t length)
{
 scsi_block_requests(vha->host);
 qla82xx_read_flash_data(vha, (uint32_t *)buf, offset, length);
 scsi_unblock_requests(vha->host);
 return buf;
}
