
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_priv {int * ops; } ;
struct TYPE_2__ {int disc_mutex; } ;
struct fc_lport {TYPE_1__ disc; int lp_mutex; } ;


 int FC_FID_DIR_SERV ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int LPORT_ST_DNS ;
 int fc_lport_error (struct fc_lport*,int *) ;
 int fc_lport_rport_ops ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 struct fc_rport_priv* fc_rport_create (struct fc_lport*,int ) ;
 int fc_rport_login (struct fc_rport_priv*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_lport_enter_dns(struct fc_lport *lport)
{
 struct fc_rport_priv *rdata;

 lockdep_assert_held(&lport->lp_mutex);

 FC_LPORT_DBG(lport, "Entered DNS state from %s state\n",
       fc_lport_state(lport));

 fc_lport_state_enter(lport, LPORT_ST_DNS);

 mutex_lock(&lport->disc.disc_mutex);
 rdata = fc_rport_create(lport, FC_FID_DIR_SERV);
 mutex_unlock(&lport->disc.disc_mutex);
 if (!rdata)
  goto err;

 rdata->ops = &fc_lport_rport_ops;
 fc_rport_login(rdata);
 return;

err:
 fc_lport_error(lport, ((void*)0));
}
