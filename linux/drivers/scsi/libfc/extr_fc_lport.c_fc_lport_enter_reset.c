
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {scalar_t__ state; scalar_t__ link_up; int host; scalar_t__ vport; int lp_mutex; } ;


 int FCH_EVT_LIPRESET ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int FC_VPORT_INITIALIZING ;
 int FC_VPORT_LINKDOWN ;
 scalar_t__ LPORT_ST_DISABLED ;
 scalar_t__ LPORT_ST_LOGO ;
 int LPORT_ST_RESET ;
 int fc_get_event_number () ;
 int fc_host_post_event (int ,int ,int ,int ) ;
 int fc_lport_enter_flogi (struct fc_lport*) ;
 int fc_lport_reset_locked (struct fc_lport*) ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int fc_vport_set_state (scalar_t__,int ) ;
 int fc_vports_linkchange (struct fc_lport*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void fc_lport_enter_reset(struct fc_lport *lport)
{
 lockdep_assert_held(&lport->lp_mutex);

 FC_LPORT_DBG(lport, "Entered RESET state from %s state\n",
       fc_lport_state(lport));

 if (lport->state == LPORT_ST_DISABLED || lport->state == LPORT_ST_LOGO)
  return;

 if (lport->vport) {
  if (lport->link_up)
   fc_vport_set_state(lport->vport, FC_VPORT_INITIALIZING);
  else
   fc_vport_set_state(lport->vport, FC_VPORT_LINKDOWN);
 }
 fc_lport_state_enter(lport, LPORT_ST_RESET);
 fc_host_post_event(lport->host, fc_get_event_number(),
      FCH_EVT_LIPRESET, 0);
 fc_vports_linkchange(lport);
 fc_lport_reset_locked(lport);
 if (lport->link_up)
  fc_lport_enter_flogi(lport);
}
