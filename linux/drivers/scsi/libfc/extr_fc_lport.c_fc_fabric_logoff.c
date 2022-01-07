
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disc_stop_final ) (struct fc_lport*) ;} ;
struct fc_lport {int retry_work; int lp_mutex; scalar_t__ dns_rdata; TYPE_1__ tt; } ;


 int cancel_delayed_work_sync (int *) ;
 int fc_lport_enter_logo (struct fc_lport*) ;
 int fc_rport_flush_queue () ;
 int fc_rport_logoff (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_lport*) ;

int fc_fabric_logoff(struct fc_lport *lport)
{
 lport->tt.disc_stop_final(lport);
 mutex_lock(&lport->lp_mutex);
 if (lport->dns_rdata)
  fc_rport_logoff(lport->dns_rdata);
 mutex_unlock(&lport->lp_mutex);
 fc_rport_flush_queue();
 mutex_lock(&lport->lp_mutex);
 fc_lport_enter_logo(lport);
 mutex_unlock(&lport->lp_mutex);
 cancel_delayed_work_sync(&lport->retry_work);
 return 0;
}
