
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int npiv_supported; } ;
struct qla_hw_data {int switch_cap; scalar_t__ num_vhosts; scalar_t__ max_npiv_vports; TYPE_1__ flags; } ;
struct fc_vport {scalar_t__ roles; int port_name; int shost; } ;
struct TYPE_7__ {int port_name; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 scalar_t__ FC_PORT_ROLE_FCP_INITIATOR ;
 int FLOGI_MID_SUPPORT ;
 int VPCERR_BAD_WWN ;
 int VPCERR_NO_FABRIC_SUPP ;
 int VPCERR_UNSUPPORTED ;
 int WWN_SIZE ;
 int memcmp (int *,int ,int) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,scalar_t__,scalar_t__) ;
 int ql_dbg_vport ;
 TYPE_2__* qla24xx_find_vhost_by_name (struct qla_hw_data*,int *) ;
 TYPE_2__* shost_priv (int ) ;
 int u64_to_wwn (int ,int *) ;

int
qla24xx_vport_create_req_sanity_check(struct fc_vport *fc_vport)
{
 scsi_qla_host_t *base_vha = shost_priv(fc_vport->shost);
 struct qla_hw_data *ha = base_vha->hw;
 scsi_qla_host_t *vha;
 uint8_t port_name[WWN_SIZE];

 if (fc_vport->roles != FC_PORT_ROLE_FCP_INITIATOR)
  return VPCERR_UNSUPPORTED;


 if (!ha->flags.npiv_supported)
  return VPCERR_UNSUPPORTED;


 if (!(ha->switch_cap & FLOGI_MID_SUPPORT))
  return VPCERR_NO_FABRIC_SUPP;


 u64_to_wwn(fc_vport->port_name, port_name);
 if (!memcmp(port_name, base_vha->port_name, WWN_SIZE))
  return VPCERR_BAD_WWN;
 vha = qla24xx_find_vhost_by_name(ha, port_name);
 if (vha)
  return VPCERR_BAD_WWN;


 if (ha->num_vhosts > ha->max_npiv_vports) {
  ql_dbg(ql_dbg_vport, vha, 0xa004,
      "num_vhosts %ud is bigger "
      "than max_npiv_vports %ud.\n",
      ha->num_vhosts, ha->max_npiv_vports);
  return VPCERR_UNSUPPORTED;
 }
 return 0;
}
