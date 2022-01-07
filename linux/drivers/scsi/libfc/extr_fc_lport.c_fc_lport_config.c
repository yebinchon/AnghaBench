
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int lp_mutex; int retry_work; } ;


 int FC_TYPE_CT ;
 int FC_TYPE_FCP ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int LPORT_ST_DISABLED ;
 int fc_fc4_conf_lport_params (struct fc_lport*,int ) ;
 int fc_lport_add_fc4_type (struct fc_lport*,int ) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int fc_lport_timeout ;
 int mutex_init (int *) ;

int fc_lport_config(struct fc_lport *lport)
{
 INIT_DELAYED_WORK(&lport->retry_work, fc_lport_timeout);
 mutex_init(&lport->lp_mutex);

 fc_lport_state_enter(lport, LPORT_ST_DISABLED);

 fc_lport_add_fc4_type(lport, FC_TYPE_FCP);
 fc_lport_add_fc4_type(lport, FC_TYPE_CT);
 fc_fc4_conf_lport_params(lport, FC_TYPE_FCP);

 return 0;
}
