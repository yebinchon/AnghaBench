
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int lp_mutex; } ;


 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int LPORT_ST_DISABLED ;
 int fc_lport_reset_locked (struct fc_lport*) ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int fc_vports_linkchange (struct fc_lport*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void fc_lport_enter_disabled(struct fc_lport *lport)
{
 lockdep_assert_held(&lport->lp_mutex);

 FC_LPORT_DBG(lport, "Entered disabled state from %s state\n",
       fc_lport_state(lport));

 fc_lport_state_enter(lport, LPORT_ST_DISABLED);
 fc_vports_linkchange(lport);
 fc_lport_reset_locked(lport);
}
