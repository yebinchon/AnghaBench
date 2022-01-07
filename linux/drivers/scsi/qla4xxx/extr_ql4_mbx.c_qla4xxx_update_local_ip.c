
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* u6_addr8; } ;
struct TYPE_5__ {TYPE_1__ in6_u; } ;
struct TYPE_6__ {int tcp_options; int ipv4_options; int eth_mtu_size; int ipv4_port; int ipv6_options; int ipv6_addl_options; int ipv6_tcp_options; int* ip_address; int* subnet_mask; int* gateway; int* ipv4_alt_cid; int* ipv4_vid; int def_timeout; int iscsi_options; int iscsi_max_pdu_size; int iscsi_first_burst_len; int iscsi_max_outstnd_r2t; int iscsi_max_burst_len; int* iscsi_name; int ipv6_addr0; int ipv6_addr1; int ipv6_default_router_addr; int ipv6_port; int ipv6_flow_lbl; int ipv6_tcp_wsf; void* ipv6_gw_advrt_mtu; int ipv6_dup_addr_detect_count; void* ipv6_nd_stale_timeout; void* ipv6_nd_rexmit_timer; void* ipv6_nd_reach_time; int ipv6_hop_limit; int ipv6_traffic_class; int ipv6_cache_id; void* ipv6_vlan_tag; TYPE_2__ ipv6_link_local_addr; void* ipv6_default_router_state; void* ipv6_addr1_state; void* ipv6_addr0_state; void* ipv6_link_local_state; int abort_timer; int ipv4_ttl; int ipv4_vid_len; int ipv4_alt_cid_len; int ipv4_cache_id; int ipv4_tos; int tcp_wsf; int control; void* ipv4_vlan_tag; void* ipv4_addr_state; } ;
struct scsi_qla_host {scalar_t__ acb_version; TYPE_3__ ip_config; } ;
struct addr_ctrl_blk {int ipv6_tcp_wsf; int ipv6_gw_advrt_mtu; int ipv6_dup_addr_detect_count; int ipv6_nd_stale_timeout; int ipv6_nd_rexmit_timer; int ipv6_nd_reach_time; int ipv6_hop_limit; int ipv6_traffic_class; int ipv6_flow_lbl; int ipv6_cache_id; int ipv6_port; int ipv6_vlan_tag; int ipv6_dflt_rtr_addr; int ipv6_addr1; int ipv6_addr0; int ipv6_if_id; int ipv6_dflt_rtr_state; int ipv6_addr1_state; int ipv6_addr0_state; int ipv6_lnk_lcl_addr_state; int iscsi_name; int iscsi_max_burst_len; int iscsi_max_outstnd_r2t; int iscsi_fburst_len; int iscsi_max_pdu_size; int iscsi_opts; int abort_timer; int def_timeout; int ipv4_ttl; int ipv4_dhcp_vid; int ipv4_dhcp_vid_len; int ipv4_dhcp_alt_cid; int ipv4_dhcp_alt_cid_len; int ipv4_cacheid; int ipv4_tos; int ipv4_tcp_wsf; int control; int ipv4_vlan_tag; int ipv4_gw_addr; int ipv4_subnet; int ipv4_addr; int ipv6_tcp_opts; int ipv6_addtl_opts; int ipv6_opts; int ipv4_port; int eth_mtu_size; int ipv4_addr_state; int ipv4_ip_opts; int ipv4_tcp_opts; } ;


 scalar_t__ ACB_SUPPORTED ;




 void* ISCSI_ROUTER_STATE_ADVERTISED ;
 void* ISCSI_ROUTER_STATE_MANUAL ;
 void* ISCSI_ROUTER_STATE_STALE ;
 void* ISCSI_ROUTER_STATE_UNKNOWN ;
 void* be16_to_cpu (int ) ;
 scalar_t__ is_ipv6_enabled (struct scsi_qla_host*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memcpy (int*,int ,int ) ;
 int min (int,int) ;
 void* qla4xxx_set_ipaddr_state (int ) ;

__attribute__((used)) static void
qla4xxx_update_local_ip(struct scsi_qla_host *ha,
   struct addr_ctrl_blk *init_fw_cb)
{
 ha->ip_config.tcp_options = le16_to_cpu(init_fw_cb->ipv4_tcp_opts);
 ha->ip_config.ipv4_options = le16_to_cpu(init_fw_cb->ipv4_ip_opts);
 ha->ip_config.ipv4_addr_state =
   qla4xxx_set_ipaddr_state(init_fw_cb->ipv4_addr_state);
 ha->ip_config.eth_mtu_size =
    le16_to_cpu(init_fw_cb->eth_mtu_size);
 ha->ip_config.ipv4_port = le16_to_cpu(init_fw_cb->ipv4_port);

 if (ha->acb_version == ACB_SUPPORTED) {
  ha->ip_config.ipv6_options = le16_to_cpu(init_fw_cb->ipv6_opts);
  ha->ip_config.ipv6_addl_options =
    le16_to_cpu(init_fw_cb->ipv6_addtl_opts);
  ha->ip_config.ipv6_tcp_options =
    le16_to_cpu(init_fw_cb->ipv6_tcp_opts);
 }


 memcpy(ha->ip_config.ip_address, init_fw_cb->ipv4_addr,
        min(sizeof(ha->ip_config.ip_address),
     sizeof(init_fw_cb->ipv4_addr)));
 memcpy(ha->ip_config.subnet_mask, init_fw_cb->ipv4_subnet,
        min(sizeof(ha->ip_config.subnet_mask),
     sizeof(init_fw_cb->ipv4_subnet)));
 memcpy(ha->ip_config.gateway, init_fw_cb->ipv4_gw_addr,
        min(sizeof(ha->ip_config.gateway),
     sizeof(init_fw_cb->ipv4_gw_addr)));

 ha->ip_config.ipv4_vlan_tag = be16_to_cpu(init_fw_cb->ipv4_vlan_tag);
 ha->ip_config.control = init_fw_cb->control;
 ha->ip_config.tcp_wsf = init_fw_cb->ipv4_tcp_wsf;
 ha->ip_config.ipv4_tos = init_fw_cb->ipv4_tos;
 ha->ip_config.ipv4_cache_id = init_fw_cb->ipv4_cacheid;
 ha->ip_config.ipv4_alt_cid_len = init_fw_cb->ipv4_dhcp_alt_cid_len;
 memcpy(ha->ip_config.ipv4_alt_cid, init_fw_cb->ipv4_dhcp_alt_cid,
        min(sizeof(ha->ip_config.ipv4_alt_cid),
     sizeof(init_fw_cb->ipv4_dhcp_alt_cid)));
 ha->ip_config.ipv4_vid_len = init_fw_cb->ipv4_dhcp_vid_len;
 memcpy(ha->ip_config.ipv4_vid, init_fw_cb->ipv4_dhcp_vid,
        min(sizeof(ha->ip_config.ipv4_vid),
     sizeof(init_fw_cb->ipv4_dhcp_vid)));
 ha->ip_config.ipv4_ttl = init_fw_cb->ipv4_ttl;
 ha->ip_config.def_timeout = le16_to_cpu(init_fw_cb->def_timeout);
 ha->ip_config.abort_timer = init_fw_cb->abort_timer;
 ha->ip_config.iscsi_options = le16_to_cpu(init_fw_cb->iscsi_opts);
 ha->ip_config.iscsi_max_pdu_size =
    le16_to_cpu(init_fw_cb->iscsi_max_pdu_size);
 ha->ip_config.iscsi_first_burst_len =
    le16_to_cpu(init_fw_cb->iscsi_fburst_len);
 ha->ip_config.iscsi_max_outstnd_r2t =
    le16_to_cpu(init_fw_cb->iscsi_max_outstnd_r2t);
 ha->ip_config.iscsi_max_burst_len =
    le16_to_cpu(init_fw_cb->iscsi_max_burst_len);
 memcpy(ha->ip_config.iscsi_name, init_fw_cb->iscsi_name,
        min(sizeof(ha->ip_config.iscsi_name),
     sizeof(init_fw_cb->iscsi_name)));

 if (is_ipv6_enabled(ha)) {

  ha->ip_config.ipv6_link_local_state =
    qla4xxx_set_ipaddr_state(init_fw_cb->ipv6_lnk_lcl_addr_state);
  ha->ip_config.ipv6_addr0_state =
   qla4xxx_set_ipaddr_state(init_fw_cb->ipv6_addr0_state);
  ha->ip_config.ipv6_addr1_state =
   qla4xxx_set_ipaddr_state(init_fw_cb->ipv6_addr1_state);

  switch (le16_to_cpu(init_fw_cb->ipv6_dflt_rtr_state)) {
  case 128:
   ha->ip_config.ipv6_default_router_state =
      ISCSI_ROUTER_STATE_UNKNOWN;
   break;
  case 130:
   ha->ip_config.ipv6_default_router_state =
      ISCSI_ROUTER_STATE_MANUAL;
   break;
  case 131:
   ha->ip_config.ipv6_default_router_state =
      ISCSI_ROUTER_STATE_ADVERTISED;
   break;
  case 129:
   ha->ip_config.ipv6_default_router_state =
      ISCSI_ROUTER_STATE_STALE;
   break;
  default:
   ha->ip_config.ipv6_default_router_state =
      ISCSI_ROUTER_STATE_UNKNOWN;
  }

  ha->ip_config.ipv6_link_local_addr.in6_u.u6_addr8[0] = 0xFE;
  ha->ip_config.ipv6_link_local_addr.in6_u.u6_addr8[1] = 0x80;

  memcpy(&ha->ip_config.ipv6_link_local_addr.in6_u.u6_addr8[8],
         init_fw_cb->ipv6_if_id,
         min(sizeof(ha->ip_config.ipv6_link_local_addr)/2,
      sizeof(init_fw_cb->ipv6_if_id)));
  memcpy(&ha->ip_config.ipv6_addr0, init_fw_cb->ipv6_addr0,
         min(sizeof(ha->ip_config.ipv6_addr0),
      sizeof(init_fw_cb->ipv6_addr0)));
  memcpy(&ha->ip_config.ipv6_addr1, init_fw_cb->ipv6_addr1,
         min(sizeof(ha->ip_config.ipv6_addr1),
      sizeof(init_fw_cb->ipv6_addr1)));
  memcpy(&ha->ip_config.ipv6_default_router_addr,
         init_fw_cb->ipv6_dflt_rtr_addr,
         min(sizeof(ha->ip_config.ipv6_default_router_addr),
      sizeof(init_fw_cb->ipv6_dflt_rtr_addr)));
  ha->ip_config.ipv6_vlan_tag =
    be16_to_cpu(init_fw_cb->ipv6_vlan_tag);
  ha->ip_config.ipv6_port = le16_to_cpu(init_fw_cb->ipv6_port);
  ha->ip_config.ipv6_cache_id = init_fw_cb->ipv6_cache_id;
  ha->ip_config.ipv6_flow_lbl =
    le16_to_cpu(init_fw_cb->ipv6_flow_lbl);
  ha->ip_config.ipv6_traffic_class =
    init_fw_cb->ipv6_traffic_class;
  ha->ip_config.ipv6_hop_limit = init_fw_cb->ipv6_hop_limit;
  ha->ip_config.ipv6_nd_reach_time =
    le32_to_cpu(init_fw_cb->ipv6_nd_reach_time);
  ha->ip_config.ipv6_nd_rexmit_timer =
    le32_to_cpu(init_fw_cb->ipv6_nd_rexmit_timer);
  ha->ip_config.ipv6_nd_stale_timeout =
    le32_to_cpu(init_fw_cb->ipv6_nd_stale_timeout);
  ha->ip_config.ipv6_dup_addr_detect_count =
     init_fw_cb->ipv6_dup_addr_detect_count;
  ha->ip_config.ipv6_gw_advrt_mtu =
    le32_to_cpu(init_fw_cb->ipv6_gw_advrt_mtu);
  ha->ip_config.ipv6_tcp_wsf = init_fw_cb->ipv6_tcp_wsf;
 }
}
