
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int fipenabled; int fipfailed; } ;
struct TYPE_14__ {TYPE_3__ fcf; } ;
struct TYPE_15__ {TYPE_4__ vc_fcf; } ;
struct TYPE_16__ {TYPE_5__ attr; } ;
struct bfi_fcport_event_s {TYPE_6__ link_state; } ;
struct bfad_s {int dummy; } ;
struct TYPE_18__ {int state; } ;
struct TYPE_17__ {int qos_enabled; } ;
struct TYPE_11__ {struct bfi_fcport_event_s* event; } ;
struct TYPE_12__ {TYPE_1__ i2hmsg; } ;
struct bfa_fcport_s {TYPE_9__* bfa; int pwwn; TYPE_8__ qos_attr; TYPE_7__ cfg; int event_cbfn; TYPE_2__ event_arg; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_19__ {int plog; int ioc; scalar_t__ bfad; } ;


 int BFA_FALSE ;







 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*) ;
 int BFA_PL_EID_FIP_FCF_DISC ;
 int BFA_PL_EID_PORT_DISABLE ;
 int BFA_PL_EID_PORT_ST_CHANGE ;
 int BFA_PL_MID_HAL ;
 int BFA_PORT_AEN_DISABLE ;
 int BFA_PORT_AEN_DISCONNECT ;
 int BFA_PORT_AEN_ONLINE ;
 int BFA_PORT_AEN_QOS_NEG ;
 int BFA_PORT_LINKUP ;
 int BFA_QOS_ONLINE ;
 int BFA_STRING_32 ;
 int KERN_INFO ;
 int WARN_ON (int) ;
 int bfa_fcport_aen_post (struct bfa_fcport_s*,int ) ;
 int bfa_fcport_reset_linkinfo (struct bfa_fcport_s*) ;
 int bfa_fcport_scn (struct bfa_fcport_s*,int ,int ) ;
 int bfa_fcport_send_disable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabling ;
 int bfa_fcport_sm_disabling_qwait ;
 int bfa_fcport_sm_faa_misconfig ;
 int bfa_fcport_sm_iocdown ;
 int bfa_fcport_sm_linkup ;
 int bfa_fcport_sm_stopped ;
 int bfa_fcport_update_linkinfo (struct bfa_fcport_s*) ;
 int bfa_ioc_get_fcmode (int *) ;
 int bfa_log_level ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_sm_fault (TYPE_9__*,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (TYPE_9__*,int) ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcport_sm_linkdown(struct bfa_fcport_s *fcport,
      enum bfa_fcport_sm_event event)
{
 struct bfi_fcport_event_s *pevent = fcport->event_arg.i2hmsg.event;
 char pwwn_buf[BFA_STRING_32];
 struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;

 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 129:
  bfa_fcport_update_linkinfo(fcport);
  bfa_sm_set_state(fcport, bfa_fcport_sm_linkup);
  WARN_ON(!fcport->event_cbfn);
  bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
    BFA_PL_EID_PORT_ST_CHANGE, 0, "Port Linkup");
  if (!bfa_ioc_get_fcmode(&fcport->bfa->ioc)) {

   bfa_trc(fcport->bfa,
    pevent->link_state.attr.vc_fcf.fcf.fipenabled);
   bfa_trc(fcport->bfa,
    pevent->link_state.attr.vc_fcf.fcf.fipfailed);

   if (pevent->link_state.attr.vc_fcf.fcf.fipfailed)
    bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
     BFA_PL_EID_FIP_FCF_DISC, 0,
     "FIP FCF Discovery Failed");
   else
    bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
     BFA_PL_EID_FIP_FCF_DISC, 0,
     "FIP FCF Discovered");
  }

  bfa_fcport_scn(fcport, BFA_PORT_LINKUP, BFA_FALSE);
  wwn2str(pwwn_buf, fcport->pwwn);
  BFA_LOG(KERN_INFO, bfad, bfa_log_level,
   "Base port online: WWN = %s\n", pwwn_buf);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_ONLINE);


  if (fcport->cfg.qos_enabled &&
      fcport->qos_attr.state != BFA_QOS_ONLINE)
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_QOS_NEG);
  break;

 case 130:



  break;

 case 133:



  break;

 case 134:
  if (bfa_fcport_send_disable(fcport))
   bfa_sm_set_state(fcport, bfa_fcport_sm_disabling);
  else
   bfa_sm_set_state(fcport,
      bfa_fcport_sm_disabling_qwait);

  bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
    BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
  wwn2str(pwwn_buf, fcport->pwwn);
  BFA_LOG(KERN_INFO, bfad, bfa_log_level,
   "Base port disabled: WWN = %s\n", pwwn_buf);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISABLE);
  break;

 case 128:
  bfa_sm_set_state(fcport, bfa_fcport_sm_stopped);
  break;

 case 131:
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocdown);
  break;

 case 132:
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  bfa_sm_set_state(fcport, bfa_fcport_sm_faa_misconfig);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
