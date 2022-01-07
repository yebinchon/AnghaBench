
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_priv {scalar_t__ retries; int kref; int retry_work; TYPE_1__* local_port; int rp_mutex; int e_d_tov; } ;
struct TYPE_2__ {scalar_t__ max_rport_retry_count; } ;


 int FC_EX_CLOSED ;
 int FC_EX_TIMEOUT ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int,int ) ;
 int fc_rport_destroy ;
 int fc_rport_error (struct fc_rport_priv*,int) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int lockdep_assert_held (int *) ;
 unsigned long msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void fc_rport_error_retry(struct fc_rport_priv *rdata, int err)
{
 unsigned long delay = msecs_to_jiffies(rdata->e_d_tov);

 lockdep_assert_held(&rdata->rp_mutex);


 if (err == -FC_EX_CLOSED)
  goto out;

 if (rdata->retries < rdata->local_port->max_rport_retry_count) {
  FC_RPORT_DBG(rdata, "Error %d in state %s, retrying\n",
        err, fc_rport_state(rdata));
  rdata->retries++;

  if (err == -FC_EX_TIMEOUT)
   delay = 0;
  kref_get(&rdata->kref);
  if (!schedule_delayed_work(&rdata->retry_work, delay))
   kref_put(&rdata->kref, fc_rport_destroy);
  return;
 }

out:
 fc_rport_error(rdata, err);
}
