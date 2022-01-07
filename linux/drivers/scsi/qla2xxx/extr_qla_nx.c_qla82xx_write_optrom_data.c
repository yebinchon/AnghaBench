
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int host; } ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int qla82xx_write_flash_data (struct scsi_qla_host*,void*,int,int) ;
 int scsi_block_requests (int ) ;
 int scsi_unblock_requests (int ) ;

int
qla82xx_write_optrom_data(struct scsi_qla_host *vha, void *buf,
 uint32_t offset, uint32_t length)
{
 int rval;


 scsi_block_requests(vha->host);
 rval = qla82xx_write_flash_data(vha, buf, offset, length >> 2);
 scsi_unblock_requests(vha->host);


 if (rval)
  rval = QLA_FUNCTION_FAILED;
 else
  rval = QLA_SUCCESS;
 return rval;
}
