
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct typec_altmode {int mode; int svid; } ;
struct pd_mode_data {size_t nsvids; size_t svid_index; int * svids; } ;
struct tcpm_port {int nr_snk_vdo; int* snk_vdo; int partner; int data_role; int partner_altmode; int port_altmode; struct pd_mode_data mode_data; } ;
typedef int __le32 ;


 int ALTMODE_DISCOVERY_MAX ;


 int CMDT_RSP_BUSY ;







 int IS_ERR_OR_NULL (int ) ;
 int PD_MAX_PAYLOAD ;
 int PD_VDO_CMD (int) ;
 int PD_VDO_CMDT (int) ;
 int PD_VDO_OPOS (int) ;
 int PD_VDO_VID (int) ;
 int TYPEC_DEVICE ;
 int TYPEC_STATE_USB ;
 int USB_SID_PD ;
 int VDO (int ,int,int const) ;
 int VDO_CMDT (int) ;
 int VDO_OPOS (int ) ;
 int WARN_ON (int ) ;
 int le32_to_cpu (int const) ;
 int supports_modal (struct tcpm_port*) ;
 int svdm_consume_identity (struct tcpm_port*,int const*,int) ;
 int svdm_consume_modes (struct tcpm_port*,int const*,int) ;
 int svdm_consume_svids (struct tcpm_port*,int const*,int) ;
 int tcpm_log (struct tcpm_port*,char*,int,int,int,int) ;
 int tcpm_register_partner_altmodes (struct tcpm_port*) ;
 int typec_altmode_attention (struct typec_altmode*,int) ;
 int typec_altmode_notify (struct typec_altmode*,int ,int *) ;
 int typec_altmode_update_active (struct typec_altmode*,int) ;
 int typec_altmode_vdm (struct typec_altmode*,int,int*,int) ;
 struct typec_altmode* typec_match_altmode (int ,int ,int ,int ) ;

__attribute__((used)) static int tcpm_pd_svdm(struct tcpm_port *port, const __le32 *payload, int cnt,
   u32 *response)
{
 struct typec_altmode *adev;
 struct typec_altmode *pdev;
 struct pd_mode_data *modep;
 u32 p[PD_MAX_PAYLOAD];
 int rlen = 0;
 int cmd_type;
 int cmd;
 int i;

 for (i = 0; i < cnt; i++)
  p[i] = le32_to_cpu(payload[i]);

 cmd_type = PD_VDO_CMDT(p[0]);
 cmd = PD_VDO_CMD(p[0]);

 tcpm_log(port, "Rx VDM cmd 0x%x type %d cmd %d len %d",
   p[0], cmd_type, cmd, cnt);

 modep = &port->mode_data;

 adev = typec_match_altmode(port->port_altmode, ALTMODE_DISCOVERY_MAX,
       PD_VDO_VID(p[0]), PD_VDO_OPOS(p[0]));

 pdev = typec_match_altmode(port->partner_altmode, ALTMODE_DISCOVERY_MAX,
       PD_VDO_VID(p[0]), PD_VDO_OPOS(p[0]));

 switch (cmd_type) {
 case 136:
  switch (cmd) {
  case 132:

   if (port->data_role == TYPEC_DEVICE &&
       port->nr_snk_vdo) {
    for (i = 0; i < port->nr_snk_vdo; i++)
     response[i + 1] = port->snk_vdo[i];
    rlen = port->nr_snk_vdo + 1;
   }
   break;
  case 130:
   break;
  case 131:
   break;
  case 129:
   break;
  case 128:
   break;
  case 133:

   if (adev)
    typec_altmode_attention(adev, p[1]);
   return 0;
  default:
   break;
  }
  if (rlen >= 1) {
   response[0] = p[0] | VDO_CMDT(135);
  } else if (rlen == 0) {
   response[0] = p[0] | VDO_CMDT(134);
   rlen = 1;
  } else {
   response[0] = p[0] | VDO_CMDT(CMDT_RSP_BUSY);
   rlen = 1;
  }
  break;
 case 135:

  if (IS_ERR_OR_NULL(port->partner))
   break;

  switch (cmd) {
  case 132:

   svdm_consume_identity(port, payload, cnt);
   response[0] = VDO(USB_SID_PD, 1, 130);
   rlen = 1;
   break;
  case 130:

   if (svdm_consume_svids(port, payload, cnt)) {
    response[0] = VDO(USB_SID_PD, 1,
        130);
    rlen = 1;
   } else if (modep->nsvids && supports_modal(port)) {
    response[0] = VDO(modep->svids[0], 1,
        131);
    rlen = 1;
   }
   break;
  case 131:

   svdm_consume_modes(port, payload, cnt);
   modep->svid_index++;
   if (modep->svid_index < modep->nsvids) {
    u16 svid = modep->svids[modep->svid_index];
    response[0] = VDO(svid, 1, 131);
    rlen = 1;
   } else {
    tcpm_register_partner_altmodes(port);
   }
   break;
  case 129:
   if (adev && pdev) {
    typec_altmode_update_active(pdev, 1);

    if (typec_altmode_vdm(adev, p[0], &p[1], cnt)) {
     response[0] = VDO(adev->svid, 1,
         128);
     response[0] |= VDO_OPOS(adev->mode);
     return 1;
    }
   }
   return 0;
  case 128:
   if (adev && pdev) {
    typec_altmode_update_active(pdev, 0);


    WARN_ON(typec_altmode_notify(adev,
            TYPEC_STATE_USB,
            ((void*)0)));
   }
   break;
  default:
   break;
  }
  break;
 case 134:
  switch (cmd) {
  case 129:

   if (adev)
    WARN_ON(typec_altmode_notify(adev,
            TYPEC_STATE_USB,
            ((void*)0)));
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }


 if (adev)
  typec_altmode_vdm(adev, p[0], &p[1], cnt);

 return rlen;
}
