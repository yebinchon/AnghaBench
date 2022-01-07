
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int scsi_qla_host_t ;


 int qla2x00_check_reg32_for_disconnect (int *,int) ;

bool
qla2x00_check_reg16_for_disconnect(scsi_qla_host_t *vha, uint16_t reg)
{
 return qla2x00_check_reg32_for_disconnect(vha, 0xffff0000 | reg);
}
