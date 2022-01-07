
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct ct_sns_pkt {int dummy; } ;
struct TYPE_17__ {TYPE_3__* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;
typedef int gfp_t ;
struct TYPE_16__ {int ct_sns; int ct_sns_dma; } ;
struct TYPE_18__ {int logout_on_delete; int list; int gnl_entry; int reg_work; int del_work; TYPE_4__ ct_desc; int chip_reset; int login_retry; int deleted; int fw_login_state; int disc_state; int fp_speed; int supported_classes; int loop_id; int port_type; TYPE_5__* vha; } ;
typedef TYPE_6__ fc_port_t ;
struct TYPE_15__ {TYPE_2__* base_qpair; int login_retry_count; TYPE_1__* pdev; } ;
struct TYPE_14__ {int chip_reset; } ;
struct TYPE_13__ {int dev; } ;


 int DSC_DELETED ;
 int DSC_LS_PORT_UNAVAIL ;
 int FCS_UNCONFIGURED ;
 int FCT_UNKNOWN ;
 int FC_COS_UNSPECIFIED ;
 int FC_NO_LOOP_ID ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PORT_SPEED_UNKNOWN ;
 int QLA_SESS_DELETED ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int kfree (TYPE_6__*) ;
 TYPE_6__* kzalloc (int,int ) ;
 int ql_log (int ,TYPE_5__*,int,char*) ;
 int ql_log_warn ;
 int qla24xx_delete_sess_fn ;
 int qla2x00_set_fcport_state (TYPE_6__*,int ) ;
 int qla_register_fcport_fn ;

fc_port_t *
qla2x00_alloc_fcport(scsi_qla_host_t *vha, gfp_t flags)
{
 fc_port_t *fcport;

 fcport = kzalloc(sizeof(fc_port_t), flags);
 if (!fcport)
  return ((void*)0);

 fcport->ct_desc.ct_sns = dma_alloc_coherent(&vha->hw->pdev->dev,
  sizeof(struct ct_sns_pkt), &fcport->ct_desc.ct_sns_dma,
  flags);
 if (!fcport->ct_desc.ct_sns) {
  ql_log(ql_log_warn, vha, 0xd049,
      "Failed to allocate ct_sns request.\n");
  kfree(fcport);
  return ((void*)0);
 }


 fcport->vha = vha;
 fcport->port_type = FCT_UNKNOWN;
 fcport->loop_id = FC_NO_LOOP_ID;
 qla2x00_set_fcport_state(fcport, FCS_UNCONFIGURED);
 fcport->supported_classes = FC_COS_UNSPECIFIED;
 fcport->fp_speed = PORT_SPEED_UNKNOWN;

 fcport->disc_state = DSC_DELETED;
 fcport->fw_login_state = DSC_LS_PORT_UNAVAIL;
 fcport->deleted = QLA_SESS_DELETED;
 fcport->login_retry = vha->hw->login_retry_count;
 fcport->chip_reset = vha->hw->base_qpair->chip_reset;
 fcport->logout_on_delete = 1;

 if (!fcport->ct_desc.ct_sns) {
  ql_log(ql_log_warn, vha, 0xd049,
      "Failed to allocate ct_sns request.\n");
  kfree(fcport);
  return ((void*)0);
 }

 INIT_WORK(&fcport->del_work, qla24xx_delete_sess_fn);
 INIT_WORK(&fcport->reg_work, qla_register_fcport_fn);
 INIT_LIST_HEAD(&fcport->gnl_entry);
 INIT_LIST_HEAD(&fcport->list);

 return fcport;
}
