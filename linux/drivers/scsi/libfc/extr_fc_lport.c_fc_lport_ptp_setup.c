
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct TYPE_7__ {int disc_mutex; } ;
struct fc_lport {TYPE_3__* ptp_rdata; TYPE_2__ disc; int lp_mutex; } ;
struct TYPE_6__ {void* node_name; void* port_name; } ;
struct TYPE_8__ {TYPE_1__ ids; int kref; } ;


 int fc_lport_enter_ready (struct fc_lport*) ;
 TYPE_3__* fc_rport_create (struct fc_lport*,int ) ;
 int fc_rport_destroy ;
 int fc_rport_login (TYPE_3__*) ;
 int fc_rport_logoff (TYPE_3__*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_lport_ptp_setup(struct fc_lport *lport,
          u32 remote_fid, u64 remote_wwpn,
          u64 remote_wwnn)
{
 lockdep_assert_held(&lport->lp_mutex);

 if (lport->ptp_rdata) {
  fc_rport_logoff(lport->ptp_rdata);
  kref_put(&lport->ptp_rdata->kref, fc_rport_destroy);
 }
 mutex_lock(&lport->disc.disc_mutex);
 lport->ptp_rdata = fc_rport_create(lport, remote_fid);
 kref_get(&lport->ptp_rdata->kref);
 lport->ptp_rdata->ids.port_name = remote_wwpn;
 lport->ptp_rdata->ids.node_name = remote_wwnn;
 mutex_unlock(&lport->disc.disc_mutex);

 fc_rport_login(lport->ptp_rdata);

 fc_lport_enter_ready(lport);
}
