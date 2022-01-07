
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int CRB_TEMP_STATE ;
 int qla82xx_get_temp_val (int ) ;
 int qla82xx_rd_32 (int ,int ) ;

int qla82xx_read_temperature(scsi_qla_host_t *vha)
{
 uint32_t temp;

 temp = qla82xx_rd_32(vha->hw, CRB_TEMP_STATE);
 return qla82xx_get_temp_val(temp);
}
