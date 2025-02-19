
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct qla_hw_data {int md_template_size; scalar_t__ md_tmplt_hdr; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;



int
qla82xx_validate_template_chksum(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 uint64_t chksum = 0;
 uint32_t *d_ptr = (uint32_t *)ha->md_tmplt_hdr;
 int count = ha->md_template_size/sizeof(uint32_t);

 while (count-- > 0)
  chksum += *d_ptr++;
 while (chksum >> 32)
  chksum = (chksum & 0xFFFFFFFF) + (chksum >> 32);
 return ~chksum;
}
