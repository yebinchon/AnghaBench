
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct secure_flash_update_block {int dummy; } ;
struct scsi_qla_host {int dummy; } ;


 int QLA_COMMAND_ERROR ;
 int QLA_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int,int) ;
 int ql_log_warn ;

__attribute__((used)) static int
qla28xx_extract_sfub_and_verify(struct scsi_qla_host *vha, uint32_t *buf,
    uint32_t len, uint32_t buf_size_without_sfub, uint8_t *sfub_buf)
{
 uint32_t *p, check_sum = 0;
 int i;

 p = buf + buf_size_without_sfub;


 memcpy(sfub_buf, (uint8_t *)p,
     sizeof(struct secure_flash_update_block));

 for (i = 0; i < (sizeof(struct secure_flash_update_block) >> 2); i++)
  check_sum += p[i];

 check_sum = (~check_sum) + 1;

 if (check_sum != p[i]) {
  ql_log(ql_log_warn, vha, 0x7097,
      "SFUB checksum failed, 0x%x, 0x%x\n",
      check_sum, p[i]);
  return QLA_COMMAND_ERROR;
 }

 return QLA_SUCCESS;
}
