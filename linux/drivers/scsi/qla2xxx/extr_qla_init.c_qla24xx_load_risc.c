
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_7__ {int flt_region_fw; } ;


 int QLA_SUCCESS ;
 int ql2xfwloadbin ;
 int qla24xx_load_risc_blob (TYPE_2__*,int *) ;
 int qla24xx_load_risc_flash (TYPE_2__*,int *,int ) ;
 int qla81xx_load_risc (TYPE_2__*,int *) ;

int
qla24xx_load_risc(scsi_qla_host_t *vha, uint32_t *srisc_addr)
{
 int rval;

 if (ql2xfwloadbin == 1)
  return qla81xx_load_risc(vha, srisc_addr);






 rval = qla24xx_load_risc_blob(vha, srisc_addr);
 if (rval == QLA_SUCCESS)
  return rval;

 return qla24xx_load_risc_flash(vha, srisc_addr,
     vha->hw->flt_region_fw);
}
