
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {scalar_t__ state; int lp_mutex; } ;


 scalar_t__ LPORT_ST_DISABLED ;
 scalar_t__ LPORT_ST_LOGO ;
 int LPORT_ST_RESET ;
 int fc_lport_enter_reset (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fc_fabric_login(struct fc_lport *lport)
{
 int rc = -1;

 mutex_lock(&lport->lp_mutex);
 if (lport->state == LPORT_ST_DISABLED ||
     lport->state == LPORT_ST_LOGO) {
  fc_lport_state_enter(lport, LPORT_ST_RESET);
  fc_lport_enter_reset(lport);
  rc = 0;
 }
 mutex_unlock(&lport->lp_mutex);

 return rc;
}
