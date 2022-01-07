
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int maxfrsize; } ;
struct bfa_port_attr_s {int speed_supported; int port_state; int cos_supported; TYPE_2__ pport_cfg; int speed; } ;
struct bfa_lport_attr_s {int port_type; } ;
struct bfa_fcs_lport_s {int num_rports; TYPE_5__* fabric; TYPE_6__* fcs; } ;
struct bfa_fcs_lport_fdmi_s {TYPE_1__* ms; } ;
struct TYPE_10__ {int symname; } ;
struct bfa_fcs_fdmi_port_attr_s {void* num_ports; void* port_state; int port_act_fc4_type; int port_fabric_name; int scos; void* port_type; TYPE_3__ port_sym_name; int port_name; int node_name; int host_name; int os_device_name; void* max_frm_size; void* curr_speed; void* supp_speed; int supp_fc4_types; } ;
struct bfa_fcs_driver_info_s {int host_machine_name; int os_device_name; } ;
struct TYPE_14__ {int symname; } ;
struct TYPE_13__ {int bfa; struct bfa_fcs_driver_info_s driver_info; } ;
struct TYPE_12__ {TYPE_4__* lps; } ;
struct TYPE_11__ {int pr_nwwn; } ;
struct TYPE_8__ {struct bfa_fcs_lport_s* port; } ;


 int BFA_FCS_FDMI_SUPP_SPEEDS_10G ;
 int BFA_FCS_FDMI_SUPP_SPEEDS_16G ;
 int BFA_FCS_FDMI_SUPP_SPEEDS_4G ;
 int BFA_FCS_FDMI_SUPP_SPEEDS_8G ;




 int BFA_SYMNAME_MAXLEN ;
 int FC_TYPE_FCP ;
 int bfa_fcport_get_attr (int ,struct bfa_port_attr_s*) ;
 int bfa_fcs_fdmi_convert_speed (int ) ;
 int bfa_fcs_lport_get_attr (struct bfa_fcs_lport_s*,struct bfa_lport_attr_s*) ;
 int bfa_fcs_lport_get_nwwn (struct bfa_fcs_lport_s*) ;
 TYPE_7__ bfa_fcs_lport_get_psym_name (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_sm_fault (TYPE_6__*,int) ;
 void* cpu_to_be32 (int ) ;
 int fc_get_fc4type_bitmask (int ,int ) ;
 int memset (struct bfa_fcs_fdmi_port_attr_s*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
bfa_fcs_fdmi_get_portattr(struct bfa_fcs_lport_fdmi_s *fdmi,
     struct bfa_fcs_fdmi_port_attr_s *port_attr)
{
 struct bfa_fcs_lport_s *port = fdmi->ms->port;
 struct bfa_fcs_driver_info_s *driver_info = &port->fcs->driver_info;
 struct bfa_port_attr_s pport_attr;
 struct bfa_lport_attr_s lport_attr;

 memset(port_attr, 0, sizeof(struct bfa_fcs_fdmi_port_attr_s));




 bfa_fcport_get_attr(port->fcs->bfa, &pport_attr);




 fc_get_fc4type_bitmask(FC_TYPE_FCP, port_attr->supp_fc4_types);




 switch (pport_attr.speed_supported) {
 case 130:
  port_attr->supp_speed =
   cpu_to_be32(BFA_FCS_FDMI_SUPP_SPEEDS_16G);
  break;

 case 131:
  port_attr->supp_speed =
   cpu_to_be32(BFA_FCS_FDMI_SUPP_SPEEDS_10G);
  break;

 case 128:
  port_attr->supp_speed =
   cpu_to_be32(BFA_FCS_FDMI_SUPP_SPEEDS_8G);
  break;

 case 129:
  port_attr->supp_speed =
   cpu_to_be32(BFA_FCS_FDMI_SUPP_SPEEDS_4G);
  break;

 default:
  bfa_sm_fault(port->fcs, pport_attr.speed_supported);
 }




 port_attr->curr_speed = cpu_to_be32(
    bfa_fcs_fdmi_convert_speed(pport_attr.speed));




 port_attr->max_frm_size = cpu_to_be32(pport_attr.pport_cfg.maxfrsize);




 strlcpy(port_attr->os_device_name, driver_info->os_device_name,
  sizeof(port_attr->os_device_name));




 strlcpy(port_attr->host_name, driver_info->host_machine_name,
  sizeof(port_attr->host_name));

 port_attr->node_name = bfa_fcs_lport_get_nwwn(port);
 port_attr->port_name = bfa_fcs_lport_get_pwwn(port);

 strlcpy(port_attr->port_sym_name.symname,
  bfa_fcs_lport_get_psym_name(port).symname, BFA_SYMNAME_MAXLEN);
 bfa_fcs_lport_get_attr(port, &lport_attr);
 port_attr->port_type = cpu_to_be32(lport_attr.port_type);
 port_attr->scos = pport_attr.cos_supported;
 port_attr->port_fabric_name = port->fabric->lps->pr_nwwn;
 fc_get_fc4type_bitmask(FC_TYPE_FCP, port_attr->port_act_fc4_type);
 port_attr->port_state = cpu_to_be32(pport_attr.port_state);
 port_attr->num_ports = cpu_to_be32(port->num_rports);
}
