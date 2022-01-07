
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int chip_reset_done; } ;
struct qla_hw_data {int base_qpair; TYPE_3__ flags; TYPE_2__* isp_ops; } ;
struct TYPE_12__ {scalar_t__ online; } ;
struct TYPE_15__ {int device_flags; int dpc_flags; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_13__ {int (* chip_diag ) (TYPE_4__*) ;} ;


 int DFLG_NO_CABLE ;
 int LOOP_RESYNC_NEEDED ;
 int MK_SYNC_ALL ;
 int RESET_MARKER_NEEDED ;
 int clear_bit (int ,int *) ;
 int qla25xx_init_queues (struct qla_hw_data*) ;
 int qla2x00_fw_ready (TYPE_4__*) ;
 int qla2x00_init_rings (TYPE_4__*) ;
 scalar_t__ qla2x00_isp_firmware (TYPE_4__*) ;
 int qla2x00_marker (TYPE_4__*,int ,int ,int ,int ) ;
 int qla2x00_setup_chip (TYPE_4__*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int
qla2x00_restart_isp(scsi_qla_host_t *vha)
{
 int status = 0;
 struct qla_hw_data *ha = vha->hw;


 if (qla2x00_isp_firmware(vha)) {
  vha->flags.online = 0;
  status = ha->isp_ops->chip_diag(vha);
  if (!status)
   status = qla2x00_setup_chip(vha);
 }

 if (!status && !(status = qla2x00_init_rings(vha))) {
  clear_bit(RESET_MARKER_NEEDED, &vha->dpc_flags);
  ha->flags.chip_reset_done = 1;


  qla25xx_init_queues(ha);

  status = qla2x00_fw_ready(vha);
  if (!status) {

   qla2x00_marker(vha, ha->base_qpair, 0, 0, MK_SYNC_ALL);
   set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
  }


  if ((vha->device_flags & DFLG_NO_CABLE))
   status = 0;
 }
 return (status);
}
