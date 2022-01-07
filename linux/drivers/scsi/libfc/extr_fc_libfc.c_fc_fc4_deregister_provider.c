
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc4_prov {scalar_t__ recv; } ;
typedef enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;


 int BUG_ON (int) ;
 int FC_FC4_PROV_SIZE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int * fc_active_prov ;
 int * fc_passive_prov ;
 int fc_prov_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void fc_fc4_deregister_provider(enum fc_fh_type type, struct fc4_prov *prov)
{
 BUG_ON(type >= FC_FC4_PROV_SIZE);
 mutex_lock(&fc_prov_mutex);
 if (prov->recv)
  RCU_INIT_POINTER(fc_passive_prov[type], ((void*)0));
 else
  RCU_INIT_POINTER(fc_active_prov[type], ((void*)0));
 mutex_unlock(&fc_prov_mutex);
 synchronize_rcu();
}
