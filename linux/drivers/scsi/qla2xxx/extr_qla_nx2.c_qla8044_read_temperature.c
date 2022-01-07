
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int scsi_qla_host_t ;


 int QLA8044_CRB_TEMP_STATE_INDEX ;
 int qla8044_rd_direct (int *,int ) ;
 int qla82xx_get_temp_val (int ) ;

int qla8044_read_temperature(scsi_qla_host_t *vha)
{
 uint32_t temp;

 temp = qla8044_rd_direct(vha, QLA8044_CRB_TEMP_STATE_INDEX);
 return qla82xx_get_temp_val(temp);
}
