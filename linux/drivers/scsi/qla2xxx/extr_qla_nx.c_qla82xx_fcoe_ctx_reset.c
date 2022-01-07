
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ online; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int QLA_FUNCTION_FAILED ;
 int qla2x00_abort_isp_cleanup (TYPE_2__*) ;
 int qla2x00_try_to_stop_firmware (TYPE_2__*) ;
 int qla82xx_restart_isp (TYPE_2__*) ;

int qla82xx_fcoe_ctx_reset(scsi_qla_host_t *vha)
{
 int rval = QLA_FUNCTION_FAILED;

 if (vha->flags.online) {

  qla2x00_abort_isp_cleanup(vha);
 }




 qla2x00_try_to_stop_firmware(vha);


 rval = qla82xx_restart_isp(vha);

 return rval;
}
