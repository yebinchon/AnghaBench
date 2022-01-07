
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcport_s {TYPE_1__* bfa; int pwwn; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_4__ {int plog; scalar_t__ bfad; } ;


 int BFA_FALSE ;






 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*) ;
 int BFA_PL_EID_PORT_DISABLE ;
 int BFA_PL_EID_PORT_ST_CHANGE ;
 int BFA_PL_MID_HAL ;
 int BFA_PORT_AEN_DISABLE ;
 int BFA_PORT_AEN_DISCONNECT ;
 int BFA_PORT_AEN_OFFLINE ;
 int BFA_PORT_IS_DISABLED (TYPE_1__*) ;
 int BFA_PORT_LINKDOWN ;
 int BFA_STRING_32 ;
 int KERN_ERR ;
 int KERN_INFO ;
 int bfa_fcport_aen_post (struct bfa_fcport_s*,int ) ;
 int bfa_fcport_reset_linkinfo (struct bfa_fcport_s*) ;
 int bfa_fcport_scn (struct bfa_fcport_s*,int ,int ) ;
 int bfa_fcport_send_disable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabling ;
 int bfa_fcport_sm_disabling_qwait ;
 int bfa_fcport_sm_faa_misconfig ;
 int bfa_fcport_sm_iocdown ;
 int bfa_fcport_sm_linkdown ;
 int bfa_fcport_sm_stopped ;
 int bfa_log_level ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcport_sm_linkup(struct bfa_fcport_s *fcport,
 enum bfa_fcport_sm_event event)
{
 char pwwn_buf[BFA_STRING_32];
 struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;

 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 132:



  break;

 case 133:
  if (bfa_fcport_send_disable(fcport))
   bfa_sm_set_state(fcport, bfa_fcport_sm_disabling);
  else
   bfa_sm_set_state(fcport,
      bfa_fcport_sm_disabling_qwait);

  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_scn(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
  bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
    BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
  wwn2str(pwwn_buf, fcport->pwwn);
  BFA_LOG(KERN_INFO, bfad, bfa_log_level,
   "Base port offline: WWN = %s\n", pwwn_buf);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_OFFLINE);
  BFA_LOG(KERN_INFO, bfad, bfa_log_level,
   "Base port disabled: WWN = %s\n", pwwn_buf);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISABLE);
  break;

 case 129:
  bfa_sm_set_state(fcport, bfa_fcport_sm_linkdown);
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_scn(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
  bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
    BFA_PL_EID_PORT_ST_CHANGE, 0, "Port Linkdown");
  wwn2str(pwwn_buf, fcport->pwwn);
  if (BFA_PORT_IS_DISABLED(fcport->bfa)) {
   BFA_LOG(KERN_INFO, bfad, bfa_log_level,
    "Base port offline: WWN = %s\n", pwwn_buf);
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_OFFLINE);
  } else {
   BFA_LOG(KERN_ERR, bfad, bfa_log_level,
    "Base port (WWN = %s) "
    "lost fabric connectivity\n", pwwn_buf);
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  }
  break;

 case 128:
  bfa_sm_set_state(fcport, bfa_fcport_sm_stopped);
  bfa_fcport_reset_linkinfo(fcport);
  wwn2str(pwwn_buf, fcport->pwwn);
  if (BFA_PORT_IS_DISABLED(fcport->bfa)) {
   BFA_LOG(KERN_INFO, bfad, bfa_log_level,
    "Base port offline: WWN = %s\n", pwwn_buf);
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_OFFLINE);
  } else {
   BFA_LOG(KERN_ERR, bfad, bfa_log_level,
    "Base port (WWN = %s) "
    "lost fabric connectivity\n", pwwn_buf);
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  }
  break;

 case 130:
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocdown);
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_scn(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
  wwn2str(pwwn_buf, fcport->pwwn);
  if (BFA_PORT_IS_DISABLED(fcport->bfa)) {
   BFA_LOG(KERN_INFO, bfad, bfa_log_level,
    "Base port offline: WWN = %s\n", pwwn_buf);
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_OFFLINE);
  } else {
   BFA_LOG(KERN_ERR, bfad, bfa_log_level,
    "Base port (WWN = %s) "
    "lost fabric connectivity\n", pwwn_buf);
   bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  }
  break;

 case 131:
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  bfa_sm_set_state(fcport, bfa_fcport_sm_faa_misconfig);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
