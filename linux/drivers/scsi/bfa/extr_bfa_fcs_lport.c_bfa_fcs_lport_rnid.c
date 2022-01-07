
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct fchs_s {scalar_t__ s_id; scalar_t__ d_id; int ox_id; } ;
struct fc_rnid_general_topology_data_s {int dummy; } ;
struct fc_rnid_common_id_data_s {int node_name; int port_name; } ;
struct fc_rnid_cmd_s {scalar_t__ node_id_data_format; } ;
struct bfa_rport_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; int fcs; } ;
struct TYPE_2__ {int vf_id; } ;


 int BFA_FALSE ;
 int FC_CLASS_3 ;
 int FC_MAX_PDUSZ ;
 scalar_t__ RNID_NODEID_DATA_FORMAT_COMMON ;
 scalar_t__ RNID_NODEID_DATA_FORMAT_DISCOVERY ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (int ,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_get_nwwn (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,struct bfa_rport_s*,int ,int ,int ,int ,scalar_t__,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_fs_port_get_gen_topo_data (struct bfa_fcs_lport_s*,struct fc_rnid_general_topology_data_s*) ;
 int bfa_trc (int ,scalar_t__) ;
 scalar_t__ fc_rnid_acc_build (struct fchs_s*,int ,scalar_t__,int ,int ,scalar_t__,struct fc_rnid_common_id_data_s*,struct fc_rnid_general_topology_data_s*) ;

__attribute__((used)) static void
bfa_fcs_lport_rnid(struct bfa_fcs_lport_s *port, struct fchs_s *rx_fchs,
  struct fc_rnid_cmd_s *rnid, u16 rx_len)
{
 struct fc_rnid_common_id_data_s common_id_data;
 struct fc_rnid_general_topology_data_s gen_topo_data;
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 struct bfa_rport_s *bfa_rport = ((void*)0);
 u16 len;
 u32 data_format;

 bfa_trc(port->fcs, rx_fchs->s_id);
 bfa_trc(port->fcs, rx_fchs->d_id);
 bfa_trc(port->fcs, rx_len);

 fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp)
  return;







 bfa_trc(port->fcs, rnid->node_id_data_format);
 if (rnid->node_id_data_format == RNID_NODEID_DATA_FORMAT_DISCOVERY) {
  data_format = RNID_NODEID_DATA_FORMAT_DISCOVERY;



  bfa_fs_port_get_gen_topo_data(port, &gen_topo_data);
 } else {
  data_format = RNID_NODEID_DATA_FORMAT_COMMON;
 }




 common_id_data.port_name = bfa_fcs_lport_get_pwwn(port);
 common_id_data.node_name = bfa_fcs_lport_get_nwwn(port);

 len = fc_rnid_acc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    rx_fchs->s_id, bfa_fcs_lport_get_fcid(port),
    rx_fchs->ox_id, data_format, &common_id_data,
    &gen_topo_data);

 bfa_fcxp_send(fcxp, bfa_rport, port->fabric->vf_id, port->lp_tag,
   BFA_FALSE, FC_CLASS_3, len, &fchs, ((void*)0), ((void*)0),
   FC_MAX_PDUSZ, 0);
}
